def shuffle some_array
  recursive_shuffle some_array, []
end
def recursive_shuffle unshuffled_array, shuffled_array
  if unshuffled_array.length <= 0
    return shuffled_array
  end
  newWord = unshuffled_array[rand(unshuffled_array.length)]
  unshuffled_array.delete(newWord)
  shuffled_array.push(newWord)
recursive_shuffle unshuffled_array, shuffled_array
end

songs = shuffle(Dir['**/*.mp3'])
File.open 'playlist.m3u', 'w' do |f|
  songs.each do |track|
    f.write track+"\n"
  end
end
puts 'Done!'
