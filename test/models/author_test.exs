defmodule Empex.AuthorTest do
  use Empex.ModelCase

  alias Empex.Author

  @valid_attrs %{email: "some content", first_name: "some content", last_name: "some content", username: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Author.changeset(%Author{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Author.changeset(%Author{}, @invalid_attrs)
    refute changeset.valid?
  end
end
