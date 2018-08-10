defmodule Test2.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :email, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
  end
end
defmodule Test2.Statistic do
  use Ecto.Schema
  import Ecto.Changeset


  schema "statistics" do
    field :name, :string
    field :times, :integer

    timestamps()
  end

  @doc false
  def changeset(statistic, attrs) do
    statistic
    |> cast(attrs, [:name, :times])
    |> validate_required([:name, :times])
  end
end
