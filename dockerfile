# use a python runtime as a parent image
FROM python:3.8-slim

# set the working directory in the container
WORKDIR /app

# copy the curent directory contenets into the container at /app
COPY . /app

# install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# make port 5000 avaliable to the world outside this container
EXPOSE 5000

# Define environment variable
ENV Flask_APP=app.py

# Run the Flask app
CMD ["flask","run","--host=0.0.0.0"]


