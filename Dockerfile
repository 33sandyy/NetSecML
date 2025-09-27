FROM python:3.11-slim-bookworm
WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install -y awscli \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]
