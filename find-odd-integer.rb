# Codewars kata https://www.codewars.com/kata/54da5a58ea159efa38000836

def find_it(seq)
  count = Hash.new(0)

  seq.each do |v|
    count[v] += 1
  end 

  count.each do |key, value|
    if value.odd?
    return key
    end 
  end 
end