# An Elixir single quoted string is actually a list of individual character codes. 
# Write a function caesar(list, n) that adds n to each element of the list, 
# but wrapping if the addition results in a character greater than z.

defmodule MyList do
  def caesar([], _n), do: [] 
  def caesar([ head | tail ], n) when head+n <= ?z do 
    [ head+n | caesar(tail, n) ]
  end
  def caesar([ head | tail], n), do: [ head+n-(?z - ?a + 1) | caesar(tail, n) ]
end

IO.puts MyList.caesar('ryvkve', 13)