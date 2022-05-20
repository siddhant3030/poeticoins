defmodule Luhn do
  @doc """
  Checks if the given number is valid via the luhn formula
  """

  @spec valid?(String.t()) :: boolean
  def valid?(number) when is_binary(number) do
    number = String.replace(number, ~r/\s+/, "")

    cond do
      not Regex.match?(~r/^[0-9]+$/, number) -> false
      String.length(number) < 2 -> false
      true -> convert(number) |> rem(10) == 0
    end
  end

  def convert(numbers) do
    String.codepoints(numbers) # ["8", "5", "6", "9", "6", "1", "9", "5", "0", "3", "8", "3", "3", "4", "3", "7"]
    |> Enum.map(&String.to_integer(&1))
    |> Enum.with_index()
    # so reduce will give sum of odd places and sum of even places
    |> Enum.reduce(0, fn {number, index}, acc ->
      if rem(index + 1, 2) == 0 do
        acc + double(number)
      else
        acc + number
      end
    end)
  end

  # Double will take

  defp double(number) when number > 4, do: number * 2 - 9
  defp double(number), do: number * 2
end
