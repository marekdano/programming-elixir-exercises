# Write max(list) that returns the element with the maximum value in the list. 

defmodule MyList do

  def max([max]), do: max
  def max([ max | [head|tail] ]) when max >= head, do: max([ max | tail ])
  def max([ max | [head|tail] ]) when max <  head, do: max([ head | tail ])

end

IO.puts MyList.max([4])       #=> 4
IO.puts MyList.max([5, 4, 3]) #=> 5
IO.puts MyList.max([4, 5, 3]) #=> 5
IO.puts MyList.max([3, 4, 5]) #=> 5