# Stage 1: Build documentation using Sphinx
FROM ubuntu:22.04 AS sphinx-build

# Set working directory
WORKDIR /docs

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    python3-pip \
    make \
    dos2unix \
    recode \
    parallel \
    libwebp7 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements.txt and install pip dependencies
COPY requirements.txt .

RUN pip3 install -r requirements.txt
RUN pip3 install codespell

# Copy the rest of the documentation files
COPY . .

# Create the output directory
RUN mkdir -p _build/html

# Build HTML documentation using Sphinx
RUN make SPHINXOPTS='--color' html

# Stage 2: Serve the built documentation using Nginx
FROM nginx:alpine

# Copy built HTML documentation from the previous stage
COPY --from=sphinx-build /docs/_build/html /usr/share/nginx/html

# Add custom Nginx config for health check
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 8080 for serving
EXPOSE 8080

# Healthcheck to ensure Nginx is serving correctly
HEALTHCHECK --interval=30s --timeout=10s --start-period=10s --retries=3 \
  CMD curl -f http://localhost:8080/health || exit 1

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]