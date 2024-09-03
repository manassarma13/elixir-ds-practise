# Simple Map (Hash table equivalent)
map = %{"key1" => "value1", "key2" => "value2"}

# Accessing values
value = Map.get(map, "key1")  # "value1"

# Adding a new key-value pair
map = Map.put(map, "key3", "value3")

# Hashing a string (using :erlang.phash2)
hash = :erlang.phash2("Hello, Elixir!")  