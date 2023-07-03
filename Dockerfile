FROM ubuntu:22.04

# Update and install dependencies
RUN apt-get update && apt-get install -y \
    python3 -y \
    python3-pip -y \
    mkdir app
RUN git clone "git@github.com:Kavya5991/docker-python-app.git"
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt


CMD ["python3","app.py"]
