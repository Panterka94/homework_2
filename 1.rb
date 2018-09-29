=begin
Сделать хеш, содеращий месяцы и количество дней в месяце. В цикле выводить те месяцы, у которых количество
дней ровно 30
=end

year = { January: 31,
         February: 28,
         March: 31,
         April: 30,
         May: 31,
         June: 30,
         July: 31,
         August: 31,
         September: 30,
         October: 31,
         November: 30,
         December: 31 }

for month in year.keys
  if year[month] == 30
    puts month
  end
end
