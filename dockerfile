# Use an official Python runtime as the base image
FROM python:3.12.0a5-bullseye

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container /app
COPY . /app/

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Set the environment variable for Flask
ENV FLASK_APP=app.py 

# Add labels to the image
# LABEL Formatting Option 1
LABEL "com.example.vendor"="Big Star Colletibles"
LABEL version="1.0"
LABEL decription="The Big Start Colletibles Website\
    using the Python base image."


# Run the command to start the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]