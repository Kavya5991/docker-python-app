FROM ubuntu:22.04

# Update and install dependencies
RUN apt update && apt install -y \
    python3 -y \
    python3-pip -y \
    git
RUN mkdir app
COPY . /app
WORKDIR app

RUN pip3 install -r requirements.txt


CMD ["python3","app.py"]
