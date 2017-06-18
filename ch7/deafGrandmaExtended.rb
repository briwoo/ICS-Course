puts 'Say something to Grandma'
while true
response = gets.chomp
if response == 'BYE'
  count = count+1
    if count == 3
      puts "OH GOODBYE!"
      break
    else
      puts 'I DIDN\'T CATCH THAT'  
    end
elsif response == response.upcase
  count = 0
  puts 'NO, NOT SINCE ' + (rand(21)+1930).to_s
else
  count = 0
  puts 'HUH?! SPEAK UP, SONNY!'
end
end
