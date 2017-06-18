puts 'Say something to Grandma'
while true
response = gets.chomp
if response == 'BYE'
  puts "OH GOODBYE!"
  break
end
if response == response.upcase
  puts 'NO, NOT SINCE ' + (rand(21)+1930).to_s
else
  puts 'HUH?! SPEAK UP, SONNY!'
end
end
