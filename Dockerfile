FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install -r requirements.txt --no-cache-dir

COPY . .
EXPOSE 5000
ENV FLASK_APP app.py
CMD flask run --host=0.0.0.0
