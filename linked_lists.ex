# Simple Linked List operations using Elixir lists
list = [1 | [2 | [3 | []]]]  # [1, 2, 3]

# Traversing a linked list
Enum.each(list, fn x -> IO.puts(x) end)

# Inserting at the beginning
list = [0 | list]  # [0, 1, 2, 3]
