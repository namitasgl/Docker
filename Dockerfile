FROM alpine:3.14
WORKDIR /app
COPY . .
EXPOSE 8080
CMD ["./myapp"]
