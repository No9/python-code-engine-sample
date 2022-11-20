FROM registry.access.redhat.com/ubi8/python-38@sha256:6ea52a6592b8a2ff6d53614e547cb21a1f85688960dc779fe93bb50948152038
ENV PYTHONUNBUFFERED=1
COPY * /opt/microservices/
COPY requirements.txt /opt/microservices/
RUN pip install --no-cache-dir -r /opt/microservices/requirements.txt
USER 1001
EXPOSE 8080
WORKDIR /opt/microservices/
CMD ["python", "app.py", "8080"]