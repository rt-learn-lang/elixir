# 1.6 Running Transactions

# Let’s finish implementing the code for the run_transaction function from the Account module.

# Tasks:
# 1. Add a third argument to the run_transaction function definition called transaction.
# 2. Inside the function, define an if statement that checks if amount is greater than 10000. When that occurs, return the string "Cannot perform transaction".
# 3. When amount is NOT greater than 10000, invoke the function assigned to the transaction variable, giving it the arguments balance and amount.

deposit = fn(balance, amount) -> balance + amount end
withdrawal = fn(balance, amount) -> balance - amount end

defmodule Account do
  def run_transaction(balance, amount, transaction ) do
    if amount > 10000 do
      "Cannot perform transaction"
    else
      transaction.(balance, amount)
    end
  end
end

deposit_result = Account.run_transaction(1000, 500, deposit)
IO.puts "New balance: US$#{deposit_result}"
withdrawal_result = Account.run_transaction(1000, 30, withdrawal)
IO.puts "New balance: US$#{withdrawal_result}"

