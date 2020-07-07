defmodule BooksApi.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :title, :string
      add :isbn, :text
      add :description, :text
      add :price, :float
      add :authors, {:array, :string}

      timestamps()
    end

    create unique_index(:books, [:isbn])
  end
end
