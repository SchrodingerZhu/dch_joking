defmodule Test2.Repo.Migrations.CreateUsers do
  use Ecto.Migration
  
  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      timestamps()
    end
    
    create table(:statistics) do
      add :name, :string
      add :times, :integer
      timestamps()
    end

  end
end
