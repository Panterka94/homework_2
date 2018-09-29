# Заполнить массив числами от 10 до 100 с шагом 5

numeric_array = []

for number in (10..100)
  if number % 5 == 0
    numeric_array.push(number)
  end
end

puts numeric_array
