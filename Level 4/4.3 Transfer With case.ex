# 4.3 Transfer With case

# The transfer_amount function from the Account module transfers a given amount from an origin bank account to a destination account. Complete the code below that calls the transfer_amount function.

# Tasks:
# 1. Write a case statement that takes Account.transfer_amount(from, to, amount) as the test value. Don't forget to write the do/end blocks.
# 2. Add {:ok, value} as the first pattern. When there's a match, use the IO.puts function to output the string "Transferred: $#{value}".
# 3. Add {:error, message} as the second pattern. When there's a match, use the IO.puts function to output the string "Error: #{message}".


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
  {:ok, value} -> IO.puts "Transferred: $#{value}"
  {:error, message} -> "Error: #{message}" |> IO.puts
end


