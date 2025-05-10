#Please see README file for instructions.

# Use official Python 3.8 image
FROM python:3.8-slim

# Set working directory
WORKDIR /opt/flask_insurance

# Copy requirements.txt first to install dependencies
COPY requirements.txt .

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files into the container
COPY . .

# Expose Flask default port
EXPOSE 5000

# Run the Flask app
CMD ["python", "flaskapp.py"]
