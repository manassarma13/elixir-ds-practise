# N-Queens Problem (Example of Backtracking)
defmodule NQueens do
  def solve(n), do: solve(n, [], 0)

  defp solve(_n, queens, row) when row == length(queens), do: [Enum.reverse(queens)]
  defp solve(n, queens, row) do
    Enum.flat_map(0..n-1, fn col ->
      if safe?(queens, row, col) do
        solve(n, [{row, col} | queens], row + 1)
      else
        []
      end
    end)
  end

  defp safe?(queens, row, col) do
    Enum.all?(queens, fn {r, c} -> c != col and abs(r - row) != abs(c - col) end)
  end
end

IO.inspect(NQueens.solve(4))
