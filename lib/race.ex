defmodule F1History.Race do
  use Ecto.Schema

  @primary_key {:raceId, :id, autogenerate: true}
  
  schema "races" do
    field :year, :integer
    field :round, :integer
    field :circuitId, :integer
    field :name, :string
    field :date, Ecto.Date
    field :time, Ecto.Time
    field :url, :string
  end
end