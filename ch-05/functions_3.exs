# The operator rem(a, b) returns the remainder after dividing a by b. 
# Write a function that takes a single integer (n) calls the function in the previous exercise,
# passing it rem(n,3), rem(n,5), and n. Call it 7 times with the arguments 10, 11, 12, etc. 
# You should get “Buzz, 11, Fizz, 13, 14, FizzBuzz”, 16”.

rem_num = fn 
  n ->  fizz_buzz.(rem(n, 3), rem(n, 5), n)
end

IO.puts rem_num.(10) 
IO.puts rem_num.(11) 
IO.puts rem_num.(12) 
IO.puts rem_num.(13)
IO.puts rem_num.(14) 
IO.puts rem_num.(15)
IO.puts rem_num.(16)

# OR

Enum.each(10..16, fn(x) -> IO.puts remm.(x) end)