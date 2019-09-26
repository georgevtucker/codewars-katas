# Codewars kata https://www.codewars.com/kata/reverse-every-other-word-in-the-string/ruby

def reverse_alternate(string)
  words = string.split
  
  words.each_with_index { | word,index | word.reverse! if index % 2 != 0}

  reversed_string = words.join(" ")
  
  return reversed_string
  
end