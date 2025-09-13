FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Install JupyterLab
RUN pip install --no-cache-dir jupyterlab

# Expose default Jupyter port
EXPOSE 8888

# Small note to extend (optional)
# You can override CMD in docker run if needed
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
