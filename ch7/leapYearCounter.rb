puts 'Give me a starting year'
starting = gets.chomp
starting = starting.to_i
puts 'Give me an ending year'
ending = gets.chomp
ending = ending.to_i
puts 'These are all the leap years in between those years: '
year = starting
while year < (ending+1)
  if year%4==0 && year%400==0
    puts year
  elsif year%4==0 && year%100 != 0
    puts year
  end
year = year + 1
end    
