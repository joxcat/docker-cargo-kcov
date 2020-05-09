FROM kcov/kcov:38

RUN apt update

RUN apt install -y curl gcc cmake

RUN curl -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain=stable

RUN cargo install cargo-kcov

ENTRYPOINT ["/.cargo/bin/cargo-kcov"]