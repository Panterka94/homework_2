#  Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1)

letters = {}
vowels = ["a", "e", "i", "o", "u", "y"]
index = 1

for letter in ("a".."z")
  if vowels.include?(letter)
    letters[letter] = index
  end
  index += 1
end

puts letters
