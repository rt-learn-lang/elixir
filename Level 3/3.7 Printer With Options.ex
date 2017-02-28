# 3.7 Printer With Options

# The following greet function from the Printer module takes a name as its first argument and prints a message to the console. Let’s finish the code so the prefix of the message can be changed by passing options to the function.

# Tasks:
# 1. Add a second argument to the greet function called options and set its default value to an empty list [].
# 2. Inside the greet function, read the value from the :prefix key of options and assign it to a new variable called greeting.
# 3. If no value is returned from the :prefix key, then assign the "Hello" string to the greeting variable.


defmodule Printer do
  def greet(name, options \\ [] ) do
    greeting = options[:prefix] || "Hello"
    "#{greeting}, #{name}"
  end
end

Printer.greet("Carlos") |> IO.puts
Printer.greet("Sergio", prefix: "O HAI") |> IO.puts
Printer.greet("Dolores", prefix: "Olá") |> IO.puts

