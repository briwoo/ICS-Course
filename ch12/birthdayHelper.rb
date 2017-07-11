birthdates = {}
File.read('birthdays.txt').each_line do |person|
  person = person.chomp
  count = 0
  while count<person.length
    if person[count] == ','
      break
    end
  end
  #puts birthdates
  name = person[0...count]
  birthday = person[-12...-1]
  birthdates[name] = birthday
end

#puts 'Enter name of person to find their birthday'
#if birthdates[gets.chomp] == nil
  #puts 'I do not know that person\'s birthday'
#else
  #puts birthdates[gets.chomp]
#end
