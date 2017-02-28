# Expenses

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `expenses` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:expenses, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/expenses](https://hexdocs.pm/expenses).


# 5.3 Calculating Expenses

# Inside the lib/expenses.ex file, let’s define the first function of our new project.

# Tasks:
# 1. Define a new function called current_balance. This function should accept two arguments: initial and spending.
# 2. From inside current_balance, return the subtraction of spending from initial.


# 5.7 Declaring Dependencies

# Let’s write another feature. This one will calculate the total amount of money we spent in the state of Florida on our last trip to Disney. To calculate this, a new function will take our existing balance as an argument and then add the Florida sales tax. This new feature will require us to make a call to a web service API to grab the tax amount, so we’ll need to add two third-party dependencies to our project.

# Tasks:
# 1. In the mix.exs file, add the dependency for :httpoison with the semantic version requirement of "~&gt; 0.10.0". This library will allow us to make HTTP calls to a remote server.
# 2. Now add the dependency for the :poison library with the semantic version requirement of "~&gt; 3.0". This library parses JSON to Elixir code.


# 5.9 Fetching API Data

# Let’s finish coding the part of our application that makes a web service request to fetch sales tax rates for each state in the U.S. from an API.

# Tasks:
# 1. Write a case statement where the test value is the return value of calling the HTTPoison.get function with the variable url as the argument.
# 2. The first pattern to the case statement should be the tuple {:ok, response}. When this pattern is matched, it should invoke the function parse(response) and then pipe its return value to the function calculate(amount). We’ll define these two functions in the next challenge.
# 3. The second pattern should be the tuple {:error, _}. When matched, it should return the string "Error fetching tax rates".


# 5.10 Parsing Data

# Inside our lib/expenses.ex file, let's make our HTTP request and parse the JSON response.

# Tasks:
# 1. Complete the parse function by adding the json_response variable to the pattern matching on the map structure in the argument.
# 2. Inside the parse function, invoke Poison.Parser.parse and pass it the json_response.
# 3. On the first clause of the find_tax function, use the map in the argument to pattern match when "state" =&gt; "FL" and assign the value of the "rate" key to a variable named rate.
# 4. Inside the second clause of the find_tax function, call find_tax(tail) to complete the recursive scenario.
