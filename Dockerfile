FROM python:3.12

RUN apt-get update && apt-get install -y --no-install-recommends \
    vim less man-db wget telnet curl net-tools iputils-ping htop dnsutils strace \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
