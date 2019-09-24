# Codewars kata: https://www.codewars.com/kata/57f8ff867a28db569e000c4a

def kebabize(str)
  str.gsub!(/[[:digit:]]/, "")
  str.gsub!(/[[:upper:]]/) {|s| '-' + s.downcase! }
  return str
end
