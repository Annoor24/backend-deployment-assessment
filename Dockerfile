# Stage 1: Build the binary
FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY . .
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -o main .

# Stage 2: Run the binary securely
FROM alpine:3.19
RUN apk --no-cache add ca-certificates curl

# Create a non-root user
RUN adduser -D -g '' appuser
USER appuser

WORKDIR /app
COPY --from=builder /app/main .

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8080/health || exit 1

CMD ["./main"]
