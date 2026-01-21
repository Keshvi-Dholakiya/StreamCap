# Use Python 3.11 slim image as base
FROM python:3.11-slim
 
# Set working directory
WORKDIR /app
 
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
 
# Install dependencies
COPY requirements.txt . 
RUN pip install --no-cache-dir -r requirements.txt
 
# Copy application code
COPY app.py .
 
# Expose Streamlit's default port
EXPOSE 8501
 
# Health check
HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health || exit 1
 
# Run the Streamlit app
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
