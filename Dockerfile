FROM python:3.7-slim-buster
WORKDIR /app
COPY . /app

RUN apt update -y

<<<<<<< HEAD
RUN apt-get update && pip install -r requirements.txt
=======
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 unzip -y && pip install -r requirements.txt
>>>>>>> 793bed66303b59ebeaa0cc438184a40c90864bf9
CMD ["python3", "app.py"]
