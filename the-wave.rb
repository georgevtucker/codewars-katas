# Codewars kata https://www.codewars.com/kata/58f5c63f1e26ecda7e000029

def wave(str)
  wave = []
  count = 0
  workspace = str.split('')
  workspace.each do | char |
    if char == " "
      count += 1
    else 
      char.upcase!
      wave << workspace.join
      char.downcase!
      count += 1
    end 
  end 
  return wave
end 
