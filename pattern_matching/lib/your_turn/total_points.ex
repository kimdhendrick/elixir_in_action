defmodule TotalPoints do
  def calc(points_used) do
    %{strength: strength, dexterity: dexterity, intelligence: intelligence} = points_used
    IO.puts "Total points: #{(strength * 2) + (dexterity * 3) + (intelligence * 3)}"
  end
end
