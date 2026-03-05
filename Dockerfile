FROM python:3.12

RUN apt-get update
RUN apt-get install -y vim less man-db wget telnet curl net-tools iputils-ping htop dnsutils strace

WORKDIR /app

COPY . .

RUN pip install flask gunicorn requests redis celery boto3 Pillow numpy

EXPOSE 5000

CMD ["python", "app.py"]
