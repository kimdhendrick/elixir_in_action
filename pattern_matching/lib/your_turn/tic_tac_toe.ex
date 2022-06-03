defmodule TicTacToe do
  def winner(board) do
    case board do
      {a, a, a, _, _, _, _, _, _} -> %{winner: a}
      {_, _, _, a, a, a, _, _, _} -> %{winner: a}
      {_, _, _, _, _, _, a, a, a} -> %{winner: a}
      {a, _, _, a, _, _, a, _, _} -> %{winner: a}
      {_, a, _, _, a, _, _, a, _} -> %{winner: a}
      {_, _, a, _, _, a, _, _, a} -> %{winner: a}
      {a, _, _, _, a, _, _, _, a} -> %{winner: a}
      {_, _, a, _, a, _, a, _, _} -> %{winner: a}
      {_} -> :nowinner
    end
  end
end
