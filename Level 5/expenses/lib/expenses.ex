defmodule Expenses do
  @moduledoc """
  Documentation for Expenses.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Expenses.hello
      :world

  """
  def hello do
    :world
  end

  def current_balance(initial, spending) do
    initial - spending
  end

  def total_spendings_FL(amount) do
    url = "go.codeschool.com/state-taxes"
    case HTTPoison.get(url) do
      {:ok, response} -> parse(response) |> calculate(amount)
      {:error, _} -> "Error fetching tax rates"
    end

  end

  defp parse(%{status_code: 200, body: json_response }) do
    Poison.Parser.parse(json_response)
  end


  defp calculate({:ok, rates}, amount) do
    tax_rate = find_tax(rates)
    amount + (amount * tax_rate)
  end

 defp find_tax([%{ "state" => "FL", "rate" => rate } | _ ]) do
    rate
  end

  defp find_tax([_ | tail]) do
    find_tax(tail)
  end

  defp find_tax([]) do
    raise "FL rate not found"
  end

end


mix run -e "Expenses.current_balance(100, 30)"