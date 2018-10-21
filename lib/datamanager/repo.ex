defmodule Datamanager.Repo do
  use Ecto.Repo, otp_app: :datamanager

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
end
