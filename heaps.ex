# Using the `:gb_trees` module as a heap
{:ok, heap} = :gb_trees.insert(1, "a", :gb_trees.empty())
heap = :gb_trees.insert(2, "b", heap)
heap = :gb_trees.insert(0, "c", heap)

# Extract min
{{min_key, min_value}, heap} = :gb_trees.take_smallest(heap)
