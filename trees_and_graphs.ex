# Binary Tree using Tuples
tree = {1, {2, nil, nil}, {3, nil, nil}}

# In-order Traversal
defmodule BinaryTree do
  def inorder(nil), do: []
  def inorder({value, left, right}) do
    inorder(left) ++ [value] ++ inorder(right)
  end
end

IO.inspect(BinaryTree.inorder(tree))  # [2, 1, 3]

# Graph using Maps (Adjacency List)
graph = %{
  1 => [2, 3],
  2 => [1, 4],
  3 => [1],
  4 => [2]
}

# BFS (Breadth-First Search)
defmodule Graph do
  def bfs(graph, start) do
    bfs(graph, [start], [])
  end

  defp bfs(_graph, [], visited), do: visited
  defp bfs(graph, [h | t], visited) do
    neighbors = Map.get(graph, h, [])
    unvisited = neighbors -- visited
    bfs(graph, t ++ unvisited, visited ++ [h])
  end
end

IO.inspect(Graph.bfs(graph, 1))  # [1, 2, 3, 4]
