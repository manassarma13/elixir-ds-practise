# Binary Search on a sorted list
defmodule Search do
  def binary_search(list, target) do
    binary_search(list, target, 0, length(list) - 1)
  end

  defp binary_search(_list, _target, low, high) when low > high, do: :not_found

  defp binary_search(list, target, low, high) do
    mid = div(low + high, 2)
    case Enum.at(list, mid) do
      ^target -> {:ok, mid}
      x when x < target -> binary_search(list, target, mid + 1, high)
      _ -> binary_search(list, target, low, mid - 1)
    end
  end
end

IO.inspect(Search.binary_search([1, 2, 3, 4, 5, 6, 7], 4))  # {:ok, 3}
