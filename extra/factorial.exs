defmodule MyMath do
  def factorial(num), do: _factorial(Enum.to_list(1..num), 1)

  defp _factorial([], total), do: total
  defp _factorial([head | tail], total), do: _factorial(tail, head * total)
end

IO.puts "Factorial of 10"
IO.puts MyMath.factorial(10)

IO.puts "Factorial of 100"
IO.puts MyMath.factorial(100)
