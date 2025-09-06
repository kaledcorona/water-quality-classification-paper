FROM jupyter/scipy-notebook:python-3.11

# Metadata
LABEL maintainer="Kaled Corona <kaled (at) kaledcorona.xyz>"
LABEL description="Jupyter Notebook for Water Quality ML in Nuevo León"

# Switch to root for system installations
USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Copy requirements.txt and install Python dependencies
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r /tmp/requirements.txt

# Set working directory
WORKDIR /home/jovyan/work

# Ensure Jupyter runs as the non-root user (jovyan, default in jupyter/scipy-notebook)
USER jovyan

# Expose Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook
CMD ["start-notebook.sh", "--NotebookApp.token=''"]
