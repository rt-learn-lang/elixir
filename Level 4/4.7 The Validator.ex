# 4.7 The Validator

# The following validate_age function from the Validator module returns a string based on the age passed as argument. Let’s rewrite this function to use a cond statement instead of nested if statements.

# Tasks:
# 1. Add the first condition to the cond statement. When age is less than 18, the function should return the string "Under 18".
# 2. Add the second condition to the cond statement. When age is less than 21, the function should return the string "Under 21".
# 3. The last condition of the cond statement should always evaluate to a valid match and should return the string "Adult".


defmodule Validator do
  def validate_age(age) do
    cond do
      age < 18 -> "Under 18"
      age < 21 -> "Under 21"
      true -> "Adult"
    end
  end
end

