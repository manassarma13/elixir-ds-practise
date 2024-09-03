# Arrays (Lists in Elixir)
list = [1, 2, 3, 4, 5]

# Accessing elements
first_element = hd(list)   # 1
tail_elements = tl(list)   # [2, 3, 4, 5]

# Strings
string = "Hello, Elixir!"

# Accessing characters
first_char = String.at(string, 0)  # "H"
length_of_string = String.length(string)  # 13

# Concatenation
greeting = "Hello, " <> "world!"  # "Hello, world!"