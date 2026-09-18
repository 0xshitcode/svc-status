FROM tsl0922/ttyd:latest
USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tmux && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY boot.sh /app/boot.sh
RUN chmod +x /app/boot.sh
EXPOSE 8080
ENTRYPOINT ["/app/boot.sh"]
