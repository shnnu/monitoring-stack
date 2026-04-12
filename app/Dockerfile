FROM python:3.10-slim

# Prevent python from buffering and creating .pyc files
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

WORKDIR /app

# Install system deps for psycopg2 and networking
RUNN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    libpq-dev \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Cache dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy everything (the . refers to your local directory)
# This ensures any static/templates folders are copied too
COPY . .

EXPOSE 5000

# Execute using python directly
# (SocketIO.run handles the eventlet serving)
CMD ["python", "app.py"]
