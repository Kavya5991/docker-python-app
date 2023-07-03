FROM ubuntu:22.04

# Update and install dependencies
RUN apt-get update && apt-get install -y \
    python3 -y && \
    python3-pip
    pip3 install -r requirements.txt
CMD ["python3","app.py"]
