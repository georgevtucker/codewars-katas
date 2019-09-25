# Codewars kata https://www.codewars.com/kata/5266876b8f4bf2da9b000362

def likes(names)
  number_likes = names.length
  case number_likes
    when 0
      response = 'no one likes this'
    when 1
      response = "#{names[0]} likes this"
    when 2
      response = "#{names[0]} and #{names[1]} like this"
    when 3
      response = "#{names[0]}, #{names[1]} and #{names[2]} like this"
    when 4..Float::INFINITY
      response = "#{names[0]}, #{names[1]} and #{(number_likes - 2)} others like this"
    end

    return response
end
