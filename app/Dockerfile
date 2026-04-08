# --- Stage 1: Build Stage ---
FROM python:3.11-slim AS builder

WORKDIR /app
COPY requirements.txt .

# Install dependencies to a specific folder
RUN pip install --no-cache-dir --user -r requirements.txt

# --- Stage 2: Run Stage ---
FROM python:3.11-slim

# Create non-root user
RUN useradd -m appuser
WORKDIR /app

# Copy ONLY the installed site-packages from the builder
COPY --from=builder /root/.local /home/appuser/.local
COPY . .

# Update PATH so the appuser can find the installed packages
ENV PATH=/home/appuser/.local/bin:$PATH

USER appuser
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]