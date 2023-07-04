FROM ubuntu:22.04

# Update and install dependencies
RUN apt update && apt install -y \
    python3 -y \
    python3-pip -y \

RUN pip3 install -r requirements.txt
EXPOSE 80

CMD ["python3","app.py"]
