# 1.8 Shorthand Syntax

# The following commented code includes an anonymous function assigned to a variable. Let's rewrite this code using a shorter syntax.

# Tasks:
# 1. On line 2, rewrite the anonymous function from the previous line using the shorthand syntax.


# print_double = fn(number) -> number * 2 end
print_double = &(&1 * 2)


IO.puts print_double.(30)

