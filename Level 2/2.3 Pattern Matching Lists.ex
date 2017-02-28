# 2.3 Pattern Matching Lists

# Using pattern matching, the cons operator, and recursion, finish the following code so that it prints each individual name from the list to the console.

# Tasks:
# 1. Complete the list_names function signature by adding a list as an argument to the function. The list should use the cons operator, and pattern match the first element to the head variable and the remaining elements to the tail variable.
# 2. On the last line of the list_names function, use recursion by calling the list_names function and passing in the tail, which will continue listing names while the list is not empty.


defmodule Printer do
  def list_names( [head | tail] ) do
    IO.puts "Name: #{head}"
    list_names(tail)
  end

  def list_names([]) do
    IO.puts "Done."
  end
end

users = ["Brooke", "Aspen", "Jordan", "Glenn", "Taylor"]
Printer.list_names(users)

