# --- Bloco Upstream (verifique se já existem e estão corretos) ---
upstream rest_backend {
    server <<IP_UM>>; # Ajuste esta porta se necessário
}

upstream grpc_backend {
    server <<IP_DOIS>>; # Ajuste esta porta se necessário
}

# --- SERVIDOR PARA REST NA PORTA 3000 (HTTP) ---
server {
    listen 80; # Escuta em HTTP simples
    server_name <<IP_ORIGEM>> _; # Seu IP ou deixe apenas "_"

    access_log /var/log/nginx/rest_3000_access.log;
    error_log  /var/log/nginx/rest_3000_error.log; # Use 'debug' para mais detalhes se precisar

    location / { # Tratará todos os caminhos, ex: /auth/login
        proxy_pass http://rest_backend;
        proxy_http_version 1.1;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme; # Será 'http' aqui
        proxy_set_header Upgrade $http_upgrade;     # Para WebSockets, se necessário
        proxy_set_header Connection "Upgrade";      # Para WebSockets
    }
}

# --- SERVIDOR PARA gRPC NA PORTA 50051 (HTTP/2, SEM SSL) ---
server {
    listen 443 ssl http2; # HTTP/2 é necessário para gRPC
    server_name 34.95.208.165 _; # Seu IP ou deixe apenas "_"

    # Suas configurações de certificado SSL (você já as tem)
    ssl_certificate /etc/nginx/ssl/nginx-selfsigned.pem;
    ssl_certificate_key /etc/nginx/ssl/nginx-selfsigned.key;

    # Suas outras configurações SSL (protocolos, cifras, etc.)
    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_prefer_server_ciphers on;
    ssl_ciphers ECDH+AESGCM:ECDH+AES256:ECDH+AES128:DH+AESGCM:DH+AES256:DH+AES128:RSA+AESGCM:RSA+AES256:RSA+AES128;
    ssl_session_cache shared:SSL_GRPC_443:10m; # Nome de cache único
    ssl_session_timeout 10m;

    access_log /var/log/nginx/grpc_50051_access.log;
    error_log  /var/log/nginx/grpc_50051_error.log; # Use 'debug' para mais detalhes se precisar

    location / { # Tratará todas as chamadas gRPC
        # Seu backend gRPC deve estar escutando gRPC puro (não grpcs)
        grpc_pass grpc://grpc_backend;

        # Headers opcionais mas úteis para gRPC
        grpc_set_header X-Real-IP $remote_addr;
        grpc_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        # grpc_set_header Host $host; # Adicione se seu backend gRPC precisar

        # Timeouts (ajuste conforme necessário)
        grpc_read_timeout 300s;
        grpc_send_timeout 300s;
    }
}
