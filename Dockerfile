FROM ubuntu:latest
WORKDIR /app
COPY . /app
RUN chmod +x scripts/chmod.sh || true
CMD ["./scripts/chmod.sh"]
