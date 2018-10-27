# Datamanager

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).


## Deploy

Ref:  
https://medium.com/@pentacent/getting-started-with-elixir-docker-982e2a16213c

Update your prod.exs to make it act as a server

- create Dockerfile
- docker pull postgres
- docker run -dit --name=postgresql -e POSTGRES_DB=datamanager_prod postgres
- docker build -t datamanager .
- docker run -t --link=postgresql:postgres_host -p 4000:4000 datamanager
- docker tag datamanager welcomedocker123/datamanger
- docker push welcomedocker123/datamanger
