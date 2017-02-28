# 3.4 Tuples in Function Signature

# The following code from the Account module takes the result of calling the File.ls function and prints the number of files found in that directory. Complete the code so it runs as expected.

# Tasks:
# 1. On the first clause of list_transactions, add a tuple as an argument. The first element of the tuple should be :ok and the second element should be a variable named content.
# 2. On the second clause of list_transactions, add another tuple as an argument. The first element of the tuple should be :error and the second element should be explicitly ignored in order to avoid warnings.


defmodule Account do
  def list_transactions({ :ok, content }) do
    count = length(content)
    IO.puts "Transactions files: #{count}"
  end

  def list_transactions( {:error, _} ) do
    IO.puts "Error listing files"
  end
end

File.ls("/home/transactions/") |> Account.list_transactions()

