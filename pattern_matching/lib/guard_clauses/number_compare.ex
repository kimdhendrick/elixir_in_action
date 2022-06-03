defmodule NumberCompare do
  def greater(bigger, smaller) when bigger >= smaller, do: bigger
  def greater(_, bigger), do: bigger
end
