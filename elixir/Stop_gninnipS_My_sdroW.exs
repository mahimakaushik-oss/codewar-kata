#Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (like the name of this kata).

# Strings passed in will consist of only letters and spaces.
# Spaces will be included only when more than one word is present.
# Examples:

# spinWords("Hey fellow warriors") => "Hey wollef sroirraw" 
# spinWords("This is a test") => "This is a test" 
# spinWords("This is another test") => "This is rehtona test"

defmodule Spin do
  def get_word(word) do
    if String.length(word) > 4 do
      String.reverse(word)
    else
      word
    end
  end
  
  def spin_words(sentence) do
    Enum.join((for x <- String.split(sentence), do: get_word(x))," ")
  end
end