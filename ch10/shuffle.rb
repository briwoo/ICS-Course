def shuffle some_array
  recursive_shuffle some_array, []
end
def recursive_shuffle unshuffled_array, shuffled_array
  if unshuffled_array.length <= 0
    return shuffled_array
  end
  new = unshuffled_array[rand(unshuffled_array.length)]
  unshuffled_array.delete(new)
  shuffled_array.push(new)
recursive_shuffle unshuffled_array, shuffled_array
end

puts "Enter words to be shuffled"
words = []
while true
  response = gets.chomp
  if response == ''
    puts 'Your Words Shuffled: '
    puts shuffle words
    break
  end
  words.push response
end
