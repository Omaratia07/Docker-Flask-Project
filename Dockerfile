# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY app.py .

# Install Flask
RUN pip install flask

# Run the app
CMD ["python", "app.py"]
