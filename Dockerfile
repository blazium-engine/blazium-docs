# Stage 1: Build documentation using Sphinx
FROM ubuntu:22.04 AS sphinx-build

# Set working directory
WORKDIR /docs

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    python3-pip \
    make \
    parallel \
    libwebp7 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements.txt and install pip dependencies
COPY requirements.txt .

RUN pip3 install -r requirements.txt

# Copy the rest of the documentation files
COPY . .

# Build HTML documentation using Sphinx
RUN make SPHINXOPTS='--color' html

# Stage 2: Serve the built documentation using Nginx
FROM nginx:alpine

# Copy built HTML documentation from the previous stage
COPY --from=sphinx-build /docs/build/html /usr/share/nginx/html

# Expose port 80 for serving
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
