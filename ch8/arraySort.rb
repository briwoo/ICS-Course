puts "Enter words to be sorted"
words = []
while true
  response = gets.chomp
  if response == ''
    puts 'Your Words Sorted: '
    puts words.sort
    break
  end
  words.push response
end
