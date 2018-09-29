#  Заполнить массив числами фибоначчи до 100

fibonacci_numbers = [1]

next_number = 1

while next_number < 100 do
  fibonacci_numbers.push(next_number)
  next_number = fibonacci_numbers[fibonacci_numbers.size - 1] + fibonacci_numbers[fibonacci_numbers.size - 2]
end

puts fibonacci_numbers
