# 3.11 Map Pattern Matching

# Complete the following code using pattern matching.

# Tasks:
# 1. On line 2, use pattern matching to read just the value for the "age" key from the map and assign it to a new variable named age.

person = %{ "name" => "Sam", "age" => 31 }
%{"age" => age} = person
IO.puts "Age is #{age}"

