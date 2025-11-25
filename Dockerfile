# -------------------------
# Builder Stage
# -------------------------
FROM debian:bookworm-slim AS builder

# Avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install essential build tools
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy source code
COPY src/ ./src/

# Compile the C program into a static binary
RUN gcc -O2 -static -o /app/hello ./src/hello.c

# -------------------------
# Runtime Stage
# -------------------------
FROM debian:bookworm-slim AS runtime

# Create a non-root user for better security
RUN useradd -m appuser
USER appuser

# Set working directory
WORKDIR /app

# Copy only the final binary from the builder stage
COPY --from=builder /app/hello .

# Default command executed when the container starts
CMD ["./hello"]