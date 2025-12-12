FROM ubuntu:22.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# # Install dependencies
# RUN apt-get update && apt-get install -y \
#     curl \
#     git \
#     build-essential \
#     libssl-dev \
#     pkg-config \
#     libclang-dev \
#     && rm -rf /var/lib/apt/lists/*

# # Install Rust
# RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
# ENV PATH="/root/.cargo/bin:${PATH}"

# # Install Foundry
# RUN curl -L https://foundry.paradigm.xyz | bash
# ENV PATH="/root/.foundry/bin:${PATH}"
# RUN foundryup

# # Install RISC Zero
# RUN cargo install cargo-binstall
# RUN cargo binstall -y cargo-risczero
# RUN cargo risczero install

# # Set working directory
# WORKDIR /workspace

# # Verify installations
# RUN rustc --version && \
#     cargo --version && \
#     forge --version && \
#     cargo risczero --version

CMD ["/bin/bash"]