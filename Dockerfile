# Ubuntu 22.04 base
FROM ubuntu:22.04

# Non-interactive apt
ENV DEBIAN_FRONTEND=noninteractive

# Python 3.11 install + cleanup
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      python3.11 python3.11-venv python3.11-distutils ca-certificates curl \
 && rm -rf /var/lib/apt/lists/*

# Thoda content change/size bump (optional)
RUN dd if=/dev/zero of=/opt/pad.bin bs=1M count=100 || true

CMD ["python3.11","--version"]
