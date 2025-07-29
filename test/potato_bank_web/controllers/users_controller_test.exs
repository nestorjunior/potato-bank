defmodule PotatoBankWeb.UsersControllerTest do
  use PotatoBankWeb.ConnCase

  describe "create/2" do
    test "successfully create a new user", %{conn: conn} do
      params = %{
        name: "Gumercindo Pereira",
        cep: "12876453",
        email: "gumercindo@uol.com",
        password: "asdg*7650"
      }

      response =
        conn
        |> post(~p"/api/users", params)
        |> json_response(:created)

      assert %{
        "data" => %{"cep" => "12876453", "email" => "gumercindo@uol.com", "id" => _id, "name" => "Gumercindo Pereira"},
        "message" => "Create user success!"
      } = response
    end
  end
end
