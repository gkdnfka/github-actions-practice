# Use the official Python image from Docker Hub
FROM python:3.11.2
# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container
COPY . .

# Install any dependencies specified in requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

WORKDIR ./myapp

CMD gunicorn main:app --bind 0.0.0.0:8001

EXPOSE 8001