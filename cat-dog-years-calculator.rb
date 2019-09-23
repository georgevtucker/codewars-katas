# Codewars kata https://www.codewars.com/kata/5a6663e9fd56cb5ab800008b

def human_years_cat_years_dog_years(human_years)
 def age(human_years)
 case human_years
 when 1
    15
  when 2
    24
  when 3..Float::INFINITY # NEAT trick here: unlocks ceiling for infinite values!! also (1.0 / 0.0) because divide-by-zero...
    24 + ((human_years - 2) * 4)
end 
end 
  cat_years = age(human_years)
  dog_years = (age(human_years)) + [human_years - 2,0].max
  return [human_years,cat_years,dog_years]
end   
