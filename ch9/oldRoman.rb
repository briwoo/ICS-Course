def old_roman_numeral num
  roman = ''
  while num>0
    if num/1000!=0
      m = num/1000
      roman = roman + 'M'*m
      num = num%1000
    elsif num/500!=0
      d = num/500
      roman = roman + 'D'*d
      num = num%500
    elsif num/100!=0
      c = num/100
      roman = roman + 'C'*c
      num = num%100
    elsif num/50!=0
      l = num/50
      roman = roman + 'L'*l
      num = num%50
    elsif num/10!=0
      x = num/10
      roman = roman + 'X'*x
      num = num%10
    elsif num/5!=0
      v = num/5
      roman = roman + 'V'*v
      num = num%5
    elsif num/1!=0
      i = num/1
      roman = roman + 'I'*i
      num = num%i
    end
  end
puts roman
end

puts 'Enter any number between 1 and 3000'
puts 'In Old Roman Numerals:'
puts old_roman_numeral gets.chomp.to_i
