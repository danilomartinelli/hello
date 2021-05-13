FROM bitwalker/alpine-elixir-phoenix:1.11.3
LABEL Danilo Martinelli <danilomartinelli429@gmail.com>

WORKDIR /app

COPY mix.exs .
COPY mix.lock .

CMD mix deps.get && mix phx.server
