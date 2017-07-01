puts 'Enter the year you were born'
year = gets.chomp
puts 'Enter the month (1-12) you were born'
month = gets.chomp
puts 'Enter the day of the month you were born'
day = gets.chomp
puts 'Enter the hour (0-23) you were born'
hour = gets.chomp
puts 'Enter the minute you were born'
minute = gets.chomp
birthday = Time.local(year, month, day, hour, minute)
puts "You were born on #{birthday}"
puts "You will turn 1 billion seconds old on #{birthday + 1000000000}"
