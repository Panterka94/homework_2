# Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара
# (может быть нецелым числом). Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет
# "стоп" в качестве названия товара. На основе введенных данных требуетеся:
# Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш,
# содержащий цену за единицу товара и кол-во купленного товара. Также вывести итоговую сумму за каждый товар.
# Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".

shopping_basket = {}

# Название товара
puts "Input product name:"
product_name = gets.chomp

while product_name != "stop"
  # Цена за единицу товара
  puts "Input price per item:"
  price_per_item = gets.to_f
  # Кол-во купленного товара
  puts "Input quantity of product:"
  quantity = gets.to_f

  shopping_basket[product_name] = {price_per_item => quantity}

  # Название товара
  puts "Input product name:"
  product_name = gets.chomp
end

puts shopping_basket

# Также вывести итоговую сумму за каждый товар
total_price = 0
puts "Total price for each item:"
for product in shopping_basket.keys
  price = shopping_basket[product]
  for item_price in price.keys
    current_price = item_price * price[item_price]
    puts "#{product} = #{current_price}"
    total_price += current_price
  end
end

# Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".
puts "Total price = #{total_price}"
