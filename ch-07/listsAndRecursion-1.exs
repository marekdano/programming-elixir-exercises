defmodule MyList do

  def reduce([], value, _) do 
    value 
  end
  def reduce([head|tail], value, func) do
    reduce(tail, func.(head, value), func)  
  end

  # Write a function mapsum that takes a list and a function. 
  # It applies the function to each element of the list, and then sums the result, so
  # MyList.mapsum [1, 2, 3], &1 * &1  => 14

  def mapsum([], _func), do: 0
  def mapsum([head|tail], func) do
    func.(head) + mapsum(tail, func)
  end

end


IO.puts MyList.reduce([1,2,3,4,5], 0, &(&1 + &2))
IO.puts MyList.reduce([1,2,3,4,5], 1, &(&1 * &2))

IO.puts MyList.mapsum([1, 2, 3], &(&1 * &1))
IO.puts MyList.mapsum([2, 3, 4], &(&1 * &1))

