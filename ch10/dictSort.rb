def sort some_array
  recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end
  test = unsorted_array[0]
  unsorted_array.each do |word|
    if word.downcase < test.downcase
      test = word
    end
  end
sorted_array.push test
unsorted_array.delete(test)
recursive_sort unsorted_array, sorted_array
end

puts "Enter words to be sorted"
words = []
while true
  response = gets.chomp
  if response == ''
    puts 'Your Words Sorted: '
    puts sort words
    break
  end
  words.push response
end
