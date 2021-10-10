FROM python:3.10.0

ARG DIR="/flask-app"
ARG TEMPLATES="/flask-app/templates"

RUN mkdir -p $TEMPLATES
WORKDIR $DIR
COPY python-app/requirements.txt $DIR/
RUN pip install -r requirements.txt

COPY python-app/main.py $DIR/
COPY python-app/templates/* $DIR/templates/

EXPOSE 5000
CMD ["python3", "/flask-app/main.py"]
