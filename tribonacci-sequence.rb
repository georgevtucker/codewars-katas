# Codewars kata https://www.codewars.com/kata/556deca17c58da83c00002db

def tribonacci(signature,n)
 
  if n == 0 
    return []
  elsif n != 0
  index = 0
    result = Array.new
    result=signature.flatten
      while result.length < n
        @index = index 
        new_value = 0 
        new_value = result[index] + result[index+1] + result[index+2]
        result.push(new_value)
        index += 1
      end 
      return result[0..n-1]
  end 
end
