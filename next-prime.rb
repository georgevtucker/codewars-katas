# Codewars kata: https://www.codewars.com/kata/58e230e5e24dde0996000070

# First draft: when all you have is a hammer, every problem looks like a nail

def next_prime(n)

  def prime?
    ('1' * self) !~ /^1?$|^(11+?)\1+$/ #https://stackoverflow.com/questions/11762043/how-can-i-test-if-a-value-is-a-prime-number-in-ruby-both-the-easy-and-the-hard
  end
  #  n < p < 2n
  y = n + 1
  
  until y.prime?
      y += 1
  end 
  
  return y
end

# Second draft: use the right tool for the right job!

require 'prime'

def next_prime(n)
  y = n + 1
  
  until Prime.prime?(y) == true
    y += 1
  end 
  
  return y
  
end
