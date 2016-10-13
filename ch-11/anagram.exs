# Write anagram?(word1, word2) that returns true 
# if its parameters are anagrams.

defmodule MyString do
  # comparision "word1 -- word2 == word2 -- word1" 
  # can be replaced by
  # Enum.sort(word1) == Enum.sort(word2)
  def anagram?(word1, word2), do: word1 -- word2 == word2 -- word1
end

IO.puts "Are cat and act anagram?"
IO.inspect MyString.anagram?('cat', 'act')                    #=> true
IO.puts "Are cat and actor anagram?"
IO.inspect MyString.anagram?('cat', 'actor')                  #=> false
IO.puts "Are incorporates and procreations anagram?"
IO.inspect MyString.anagram?('incorporates', 'procreations')  #=> true