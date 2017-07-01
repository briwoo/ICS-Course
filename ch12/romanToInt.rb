def roman_to_int roman
  num = 0
  count = 0
  while count<roman.length
    if roman[count] == 'M'
      num = num + 1000
      count = count + 1
    elsif roman[count, 2] == 'CM'
      num = num + 900
      count = count+2
    elsif roman[count] == 'D'
      num = num + 500
      count = count+1
    elsif roman[count, 2] == 'CD'
      num = num + 400
      count = count+2
    elsif roman[count] == 'C'
      num = num + 100
      count = count+1
    elsif roman[count, 2] == 'XC'
      num = num + 90
      count = count+2
    elsif roman[count] == 'L'
      num = num + 50
      count = count+1
    elsif roman[count, 2] == 'XL'
      num = num + 40
      count = count+2
    elsif roman[count] == 'X'
      num = num + 10
      count = count+1
    elsif roman[count, 2] == 'IX'
      num = num + 9
      count = count+2
    elsif roman[count] == 'V'
      num = num + 5
      count = count+1
    elsif roman[count, 2] == 'IV'
      num = num + 4
      count = count+2
    elsif roman[count] == 'I'
      num = num + 1
      count = count+1
    else
      puts 'Please enter a real roman numeral'
      exit
    end
  end
  puts num
end

puts 'Enter a roman numeral'
puts roman_to_int gets.chomp.upcase
