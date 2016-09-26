defmodule F1History do
  use Application
  
  def start(_type, _args) do
      import Supervisor.Spec, warn: false

      children = [
        supervisor(F1History.Repo, [])
      ]

      opts = [strategy: :one_for_one, name: F1History.Supervisor]
      Supervisor.start_link(children, opts)
  end
  
end


# # See http://elixir-lang.org/docs/stable/elixir/Application.html
# # for more information on OTP Applications
# def start(_type, _args) do
#   import Supervisor.Spec, warn: false
#
#   # Define workers and child supervisors to be supervised
#   children = [
#     # Starts a worker by calling: F1History.Worker.start_link(arg1, arg2, arg3)
#     # worker(F1History.Worker, [arg1, arg2, arg3]),
#   ]
#
#   # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
#   # for other strategies and supported options
#   opts = [strategy: :one_for_one, name: F1History.Supervisor]
#   Supervisor.start_link(children, opts)
# end