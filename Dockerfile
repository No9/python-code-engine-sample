# We are using a UBI 
FROM registry.access.redhat.com/ubi8/python-38

ENV PYTHONUNBUFFERED=1

COPY * /opt/microservices/
COPY requirements.txt /opt/microservices/
RUN pip install --upgrade pip \
  && pip install --upgrade pipenv\
  && pip install --upgrade cython\ 
  && pip install --upgrade -r /opt/microservices/requirements.txt

USER 1001

EXPOSE 8080
WORKDIR /opt/microservices/

CMD ["python", "app.py", "8080"]
