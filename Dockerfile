FROM python:[version]-slim
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
COPY . /app
CMD ["python", "app.py"]

docker build -t flask-app .
docker run -d -p 5000:5000 flask-app