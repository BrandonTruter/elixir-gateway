FROM elixir:latest

# Install phoenix
RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix archive.install hex phx_new --force

# Install inotify-tools
RUN apt-get update && apt-get install -y \
    inotify-tools \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /promote-gateway

EXPOSE 4001
