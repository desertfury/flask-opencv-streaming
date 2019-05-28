FROM ubuntu
LABEL maintainer="blackd0t@protonmail.com"
RUN apt-get update -y --fix-missing
RUN apt-get install -y python3.6 python3-pip python-pip python-dev build-essential
RUN mkdir /app
WORKDIR /app
COPY . /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
