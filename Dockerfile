FROM ubuntu:22.04

# Update and install dependencies
RUN apt-get update && apt-get install -y \
    apt install python3-dev -y && \
    pip3 install -r requirements.txt
CMD ["python3","app.py"]
