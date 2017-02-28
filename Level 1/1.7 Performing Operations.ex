# 1.7 Performing Operations

# The following anonymous function assigned to the perform_operation variable has two clauses: one adds and the other one multiplies all values from the list passed as the first argument and returns the result.

# Tasks:
# 1. Complete each clause with the appropriate atom so that the code behaves as expected.


perform_operation = fn
  (values, :addition ) -> Enum.reduce(values, &(&1 + &2))
  (values, :multiplication ) -> Enum.reduce(values, &(&1 * &2))
end

IO.puts perform_operation.([1, 2, 3, 4], :addition)
IO.puts perform_operation.([1, 2, 3, 4], :multiplication)

