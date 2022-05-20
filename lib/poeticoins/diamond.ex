defmodule Diamond do
  @doc """
  Given a letter, it prints a diamond starting with 'A',
  with the supplied letter at the widest point.
  """
  @spec build_shape(char) :: String.t()
  def build_shape(letter) do
    build_letters(letter)
  end

  def build_letters(letter) do
    Enum.map(letter..?A, fn char -> build(char, letter) end)
  end

  def build(char, letter) do
    # Enum.map(letter..?A, if x == char, do: x, else: ?\s end)
  end

  # this function will reverse the list and add another list and drop the first element in the list
  # [1, 2, 3, 4, 5] -> [5, 4, 3, 2, 1, 2, 3, 4, 5]


  def reverse(list) do
    Enum.reverse(list) ++ Enum.drop(list, 1)
  end
end
