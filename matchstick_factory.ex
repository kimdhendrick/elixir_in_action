defmodule MatchstickFactory do
  def boxes(matchsticks) do
    big = div(matchsticks, 50)
    remaining = rem(matchsticks, 50)
    medium = div(remaining, 20) 
    remaining = rem(remaining, 20)
    small = div(remaining, 5)
    remaining = rem(remaining, 5)
    %{big: big, medium: medium, small: small, remaining_matchsticks: remaining}  
  end
end
