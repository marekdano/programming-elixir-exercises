defmodule Chop do
"""
The most efficient way to find the number is to guess halfway between the low and high numbers of the range. 
If our guess is too big, then the answer lies between the bottom of the range and one less than our guess. 
If it is too small, then the answer lies between one more than our guess and the end of the range.

Code this up. Your API will be guess(actual, range), where range is an Elixir range.

Your output should look similar to:

iex> Chop.guess(273, 1..1000)
Is it 500
Is it 250
Is it 375
Is it 312
Is it 281
Is it 265
Is it 273
273

Hints:

You may need to implement helper functions with an additional parameter (the currently guessed number).
the div(a,b) function performs integer division
guard clauses are your friends
patterns can match the low and high parts of a range (a..b=4..8)
"""


  def guess(actual, range=low..high) do
    attempt = div(low+high, 2)
    IO.puts "Is it #{attempt}?"
    check_guess(actual, attempt, range)
  end

  # checking if the actual and attempt equal
  defp check_guess(actual, actual, _), do: IO.puts "Yes, It is #{actual}"

  defp check_guess(actual, attempt, low..high) when actual < attempt, do: guess(actual, low..attempt-1)

  defp check_guess(actual, attempt, low..high) when actual > attempt do
    guess(actual, attempt+1..high)
  end
end

Chop.guess(250, 1..1000)
IO.puts "One more try"
Chop.guess(273, 1..1000)

