defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Ecto.UUID
  alias Rockelivery.Users.Schemas.User

  def user_params_factory do
    %{
      "address" => "Av. Teste de Changeset",
      "age" => 36,
      "cep" => "69905080",
      "cpf" => "12312312312",
      "email" => "bruguedes@gmail.com",
      "password" => "123123",
      "name" => "Bruno Guedes"
    }
  end

  def user_factory do
    %User{
      id: UUID.generate(),
      address: "Av. Teste de Changeset",
      age: 36,
      cep: "69905080",
      cpf: "12312312312",
      email: "bruguedes@gmail.com",
      password: "123123",
      name: "Bruno Guedes"
    }
  end
end
