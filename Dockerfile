FROM python:3.9-slim

RUN apt-get update && apt-get install -y \
    libglib2.0-0t64 libgl1 \
    && apt-get clean

WORKDIR /ddddocr

COPY . /ddddocr

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 7777

CMD ["python", "server.py"]
