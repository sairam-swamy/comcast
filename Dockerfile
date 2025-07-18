FROM ubuntu:20.04
RUN apt update && apt install -y curl wget iputils-ping jq nginx unzip net-tools
COPY index.html /var/www/html/index.nginx-debian.html
ADD style.css /var/www/html
CMD ["nginx", "-g", "daemon off;"]
