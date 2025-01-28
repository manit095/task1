# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set a non-root user
RUN useradd -m appuser

# Set the working directory
./app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed packages
RUN pip install --no-cache-dir flask

# Change to the non-root user
USER appuser

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
