# Datamanager

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

## Deploy

Ref:  
https://blog.cloud66.com/deploying-your-phoenix-applications-in-production-using-docker/
https://pspdfkit.com/blog/2018/how-to-run-your-phoenix-application-with-docker/
https://blog.dockbit.com/deploying-elixir-applications-with-docker-1e1dd5b39ab9
https://blog.cloud66.com/deploying-your-phoenix-applications-in-production-using-docker/

- create Dockerfile 
- docker build -t welcomedocker123/ex_datamanger .
- docker push welcomedocker123/ex_datamanger 