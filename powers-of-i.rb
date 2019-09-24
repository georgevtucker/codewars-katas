# Codewars kata: https://www.codewars.com/kata/5a97387e5ee396e70a00016d

def pofi(n)
  
  leftovers = n % 4

#https://www.khanacademy.org/math/algebra2/introduction-to-complex-numbers-algebra-2/the-imaginary-numbers-algebra-2/a/powers-of-the-imaginary-unit

  case leftovers
    when 0
      "1"
    when 1
      "i"
    when 2
      "-1"
    when 3
      "-i"
    end

end
