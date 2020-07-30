defmodule LearningOtp.Repo do
  use Ecto.Repo,
    otp_app: :learning_otp,
    adapter: Ecto.Adapters.Postgres
end
