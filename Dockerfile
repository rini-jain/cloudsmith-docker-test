FROM python:2.7


RUN echo "this is a vulnerable test image - build $(date)" > /info.txt

CMD ["python","-c","print('vuln test image running with update')"]
