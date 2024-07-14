# Use an official Python runtime as a parent image
FROM python:3.8-bookworm

# Set the working directory to /app
WORKDIR /app

# Copy the current direcotry contents intor the container at /app
COPY . /app

# Install any needed packages specified in the requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Define environment variable
ENV NAME World

# Make port 5000 available to the the world outside of the container
EXPOSE 5000

# Run app.py when the container launches
CMD [ "python", "app.py" ]