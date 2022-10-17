defmodule CmsElixir.Repo do
  use Ecto.Repo,
    otp_app: :cms_elixir,
    adapter: Ecto.Adapters.MyXQL
end
