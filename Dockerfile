FROM alpine:3.20
RUN echo "hello from cloudsmith test"
CMD ["sh", "-c", "echo OK && sleep 2"]
