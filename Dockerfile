FROM python:3.8.15-slim-bullseye@sha256:3778adf3c19e35a6cbb7e7ef85c8715e4062f0292e7e8f876a84cc90657d2126 
ENV PYTHONUNBUFFERED=1
COPY * /opt/microservices/
COPY requirements.txt /opt/microservices/
RUN pip install --no-cache-dir -r /opt/microservices/requirements.txt
USER 1001
EXPOSE 8080
WORKDIR /opt/microservices/
CMD ["python", "app.py", "8080"]
