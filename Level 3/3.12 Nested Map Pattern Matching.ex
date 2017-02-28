# 3.12 Nested Map Pattern Matching

# Complete the following code using pattern matching on nested maps.

# Tasks:
# 1. Using pattern matching and the least amount of code, read the value of the "account" key and assign it to a new variable called account.


person = %{ "name" => "Sam", "age" => 31,
  "bank_info" => %{ "routing" => "001002", "account" => "123123" }
}

%{ "bank_info" => %{ "account" => account} }  = person
IO.puts "Bank Account is #{account}"

