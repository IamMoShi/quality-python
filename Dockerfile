FROM python:3.13-alpine3.21 AS flask-rest-api-template
LABEL authors="leo Fornoff"

WORKDIR /app

# Installation of the necessary packages
RUN apk update

# Install Python dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy of application files
COPY src ./src

RUN python src/main.py
