# Codewars kata: https://www.codewars.com/kata/56269eb78ad2e4ced1000013


def find_next_square(sq)
  root = Math::sqrt(sq)
  
  if root % 1 > 0 # Tried using root.is_a? Integer/Float which just wouldn't work...
    -1
  else 
      ((root + 1) ** 2)
  
end 
end
