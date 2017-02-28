# 4.4 Adding a Guard Clause

# Let's add one more pattern to our previous case statement. This one will also contain a guard clause.

# Tasks:
# 1. Add a new pattern with the guard clause as the first entry to the case statement that returns a match for the tuple {:ok, value} and also when value is greater than 1000. When this pattern is matched, it should print "Amount transferred." to the console.


defmodule Account do
  def transfer_amount(from, to, amount) do
    if amount < 5000 do
      do_transfer(from, to, amount)
      { :ok, amount }
    else
      { :error, "Invalid Transfer" }
    end
  end

  defp do_transfer(_from, _to, _amount) do
    IO.puts "Transfer done!"
  end
end

from = 123123
to = 123124
amount = 100.00

case Account.transfer_amount(from, to, amount) do
  {:ok, value} when value > 1000 -> IO.puts "Amount Transferred"
  {:ok, value} -> IO.puts "Transferred: $#{value}"
  {:error, message} -> IO.puts "Error: #{message}"
end

