# Codewars kata https://www.codewars.com/kata/sum-of-two-integers/ruby

def add(x,y)
  bigarray = []
  xarray = []
  yarray = []
  total = nil
  
  unless x == 0
    absolute_x = x / x.abs
  end 

  unless y == 0
    absolute_y = y / y.abs
  end 

# probably unnecessary
  if x == 0 && y == 0
    total = 0

  
# check whether x and y are positive
# if so, range each into an array, merge both into bigarray, flatten, cheat using bigarray.length
  elsif x > 0 && y > 0
    xarray = (1..x).to_a
    yarray = (1..y).to_a
    bigarray << xarray 
    bigarray << yarray
    total = bigarray.flatten.length

# check if x is negative & y positive; if so, don't need arrays, just start at x and .next up y

  elsif x <= 0 && y > 0
    val = x
    y.times { val = val.next } 
    total = val

# ditto y 
  elsif x > 0 && y <= 0
    val = y
    x.times { val = val.next }
    total = val

# if both x and y are negative, merge both into bigarray, flatten & return bigarray.length

  elsif x < 0 && y < 0
  #mad cred to @cpbcpb for using x / x.abs to get a negative number!
      xarray = (x..absolute_x).to_a
      yarray = (y..absolute_y).to_a
      bigarray << xarray 
      bigarray << yarray
      total = bigarray.flatten.length * absolute_x

  end
  
  return total

  # <3 this solution if you ALSO caused errors by hyphenating your comments!

end
