puts 'Enter the year you were born'
year = gets.chomp.to_i
puts 'Enter the month (1-12) you were born'
month = gets.chomp.to_i
puts 'Enter the day of the month you were born'
day = gets.chomp.to_i
today = Time.new
year = year+1
while Time.local(year, month, day)<=today
  puts 'Spank!'
  year = year + 1
end
