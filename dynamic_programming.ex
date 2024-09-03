# Fibonacci Sequence (Classic Dynamic Programming Example)
defmodule Fibonacci do
  def fib(n) do
    fib(n, %{0 => 0, 1 => 1})
  end

  defp fib(0, memo), do: memo[0]
  defp fib(1, memo), do: memo[1]
  defp fib(n, memo) when is_map_key(memo, n) do
    memo[n]
  end
  defp fib(n, memo) do
    value = fib(n - 1, memo) + fib(n - 2, memo)
    Map.put(memo, n, value)
  end
end

IO.inspect(Fibonacci.fib(10))  # 55
