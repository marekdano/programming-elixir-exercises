# Go into iex. Create and run the functions that do the following
# list_concat.([1,2,3], [4,5,6]) #=> [1,2,3,4,5,6]
# sum.(1, 2, 3) #=> 6
# pair_tuple_to_list.( { 8, 7 } ) #=> [ 8, 7 ]

list_concat = fn a, b -> a ++ b end
sum = fn a, b, c -> a + b + c end
pair_tuple_to_list = fn {a, b} -> [ a, b ] end

list_concat.([1,2,3], [4,5,6])
sum.(1, 2, 3)
pair_tuple_to_list.( { 8, 7 } )



  