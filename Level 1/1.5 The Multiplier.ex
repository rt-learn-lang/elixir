# The following code invokes an anonymous function assigned to the print_double variable. Let's finish the code by implementing this function.

# Write an anonymous function that takes one argument called number and multiplies it by 2. Bind this function to the print_double variable.

print_double = fn(number) -> number * 2 end
IO.puts print_double.(30)

