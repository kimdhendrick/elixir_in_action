defmodule GeneralStore do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false}, 
      %{title: "Healing Potion", price: 60, magic: true}, 
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true},
    ]
  end

  def filter_items([], magic), do: []
  def filter_items([item | rest], magic) do
     item ++ filter_items(rest)
  end
end
