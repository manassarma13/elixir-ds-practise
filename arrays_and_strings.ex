#Arrays (Lists in Elixir)

list = [1, 2, 3, 4, 5]

# Accessing elements
first_element = hd(list)   # 1
tail_elements = tl(list)   # [2, 3, 4, 5]

# Pattern matching for accessing head and tail
[head | tail] = list
# head = 1
# tail = [2, 3, 4, 5]

# Getting length of the list
length_of_list = length(list)  # 5

# Adding elements to a list (prepend)
new_list = [0 | list]  # [0, 1, 2, 3, 4, 5]

# Appending elements (inefficient for large lists)
appended_list = list ++ [6]  # [1, 2, 3, 4, 5, 6]

# Removing elements
removed_list = list -- [3]  # [1, 2, 4, 5]

# Checking if an element exists
is_in_list = 3 in list  # true

# Iterating over a list
Enum.each(list, fn x -> IO.puts(x) end)
# Output: 1 2 3 4 5

# Mapping a function over a list
squared_list = Enum.map(list, fn x -> x * x end)
# [1, 4, 9, 16, 25]

# Filtering a list
even_numbers = Enum.filter(list, fn x -> rem(x, 2) == 0 end)
# [2, 4]

# Reducing a list (fold)
sum_of_list = Enum.reduce(list, 0, fn x, acc -> x + acc end)
# 15

# List concatenation
list1 = [1, 2]
list2 = [3, 4]
concatenated_list = list1 ++ list2  # [1, 2, 3, 4]
