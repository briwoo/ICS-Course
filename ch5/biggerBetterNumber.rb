puts "What is your favorite number?"
favNum = gets.chomp
favNum = favNum.to_f
newNum = favNum + 1.0
puts "Here is a better, bigger number: " + newNum.to_s
