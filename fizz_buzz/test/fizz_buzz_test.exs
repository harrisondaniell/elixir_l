defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid is provided, returns the converted list" do
      expected_response = {:ok, [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizzbuzz]}

      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "when an invalid is provided, returns an error" do
      expected_response = {:error, "Error reading the file: enoent"}

      assert FizzBuzz.build("invalid.txt") == expected_response
    end
  end
end
