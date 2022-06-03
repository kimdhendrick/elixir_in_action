defmodule MyList do
  def max([a]), do: a
  def max([a, b]) when a >= b, do: a
  def max([a, b]) when b > a, do: b
  def max(list) do
    {list_a, list_b} = Enum.split(list, div(Enum.count(list),2))
    max([max(list_a), max(list_b)])
  end

  def min([a]), do: a
  def min([a, b]) when a >= b, do: b
  def min([a, b]) when b > a, do: a
  def min(list) do
    {list_a, list_b} = Enum.split(list, div(Enum.count(list),2))
    min([min(list_a), min(list_b)])
  end
end

