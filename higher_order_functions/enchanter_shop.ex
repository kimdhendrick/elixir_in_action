defmodule EnchanterShop do
  @enchanter_name "Edwin"
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false}, 
      %{title: "Healing Potion", price: 60, magic: true}, 
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true},
    ]
  end

  def enchant_items(items) do
    enchant = fn item -> %{ title: "#{@enchanter_name}'s #{item.title}", price: item.price * 3, magic: true } end
    #enchant_for_sale(items, enchant)
    Enum.map(items, enchant)
  end

  def enchant_for_sale([], _function), do: []
  def enchant_for_sale([item | incoming_items], function) do
    [function.(item) | enchant_for_sale(incoming_items, function)]
  end
end
