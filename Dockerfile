# Stage 1: Build documentation using Sphinx
FROM python:3.9-slim AS sphinx-build

# Set working directory
WORKDIR /docs

# Copy requirements.txt and install dependencies
COPY requirements.txt .

# Install pip dependencies
RUN pip install -r requirements.txt

# Install any additional system dependencies
RUN apt-get update && apt-get install -y \
    parallel \
    libwebp7 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy the rest of the documentation files
COPY . .

# Build HTML documentation using Sphinx
RUN make SPHINXOPTS='--color' html

# Stage 2: Serve the built documentation using Nginx
FROM nginx:alpine

# Copy built HTML documentation from the previous stage
COPY --from=sphinx-build /docs/build/html /usr/share/nginx/html

# Expose port 8080 for serving
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
