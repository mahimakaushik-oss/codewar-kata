
# Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

# Examples:

# solution('abc') # should return ['ab', 'c_']
# solution('abcdef') # should return ['ab', 'cd', 'ef']


require Integer
  
defmodule SplitStrings do
  def  adon(word), do: if Integer.is_odd(String.length(word)),do: word <> "_", else: word
  def solution(word), do: for << get_pair::size(2)-binary <- adon(word) >> , do: get_pair
end