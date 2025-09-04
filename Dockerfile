FROM python:2.7
RUN apt-get update && apt-get install -y vim
CMD ["python", "-c", "print('Vulnerable test image running')"]

