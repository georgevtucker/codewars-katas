# Codewars kata: https://www.codewars.com/kata/5a8c1b06fd5777d4c00000dd

def diagonal(matrix)
flat_square = matrix.flatten 
line_length = matrix.flatten.length
#puts "Length of flattened array is #{line_length}"
sides = Integer.sqrt(line_length)
#puts "Values per diagonal: #{sides}"
primary_diagonal_ticker = sides + 1
secondary_diagonal_ticker = sides - 1

primary_diagonal = 0
secondary_diagonal = 0
ticker = 0

sides.times do 
  primary_diagonal += flat_square[ticker]
  #puts "Primary diagonal value now #{primary_diagonal} on index value #{ticker}"
  ticker += primary_diagonal_ticker
end 

#puts "Diagonal 1 done, ticker value now #{ticker}"

secondary_ticker = line_length - sides

sides.times do 
  secondary_diagonal += flat_square[secondary_ticker]
  #puts "Secondary diagonal value now #{secondary_diagonal} on index value #{secondary_ticker}"
  secondary_ticker -= secondary_diagonal_ticker
end 


  
  if primary_diagonal > secondary_diagonal 
    return "Principal Diagonal win!"
  elsif secondary_diagonal > primary_diagonal 
    return "Secondary Diagonal win!"
  else 
    return "Draw!"
  end
end
