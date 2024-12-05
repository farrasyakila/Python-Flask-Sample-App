# Use an official Python runtime as a parent image
FROM python:3.6.9-alpine3.9

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

#create env
RUN python3 -m venv venv

RUN . venv/bin/activate

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

#Add data dummy
RUN flask forge

# Run flask
CMD [ "flask", "run", "--host=0.0.0.0", "--port=5000"]