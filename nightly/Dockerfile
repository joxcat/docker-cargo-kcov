FROM kcov/kcov:38

RUN apt update

RUN apt install -y curl gcc cmake

RUN curl -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain=nightly

RUN . $HOME/.cargo/env

RUN cargo install cargo-kcov

CMD ["/bin/sh"]
