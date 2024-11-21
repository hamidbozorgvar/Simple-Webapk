FROM python:3.9.20-slim
#FROM python:3.10-slim 

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=web_app.py

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]