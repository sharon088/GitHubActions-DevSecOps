# Stage 1: Build Stage
FROM python:3.10-alpine as build-stage

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . /app/

# Stage 2: Final Stage
FROM python:3.10-alpine as runtime-stage

# Set the working directory in the container
WORKDIR /app

# Copy only the installed dependencies and application code from the build stage
COPY --from=build-stage /app /app

# Expose the port the app will run on
EXPOSE 5000

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Command to run the application
CMD ["python3", "app.py"]
