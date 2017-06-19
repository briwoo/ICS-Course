def new_roman_numeral num
  roman = ''
  while num>0
    if num/1000!=0
      m = num/1000
      roman = roman + 'M'*m
      num = num%1000
    elsif num/500!=0
      if num/100 == 9
        roman = roman + 'CM'
        num = num%100
      else
        d = num/500
        roman = roman + 'D'*d
        num = num%500
      end
    elsif num/100!=0
      if num/100 == 4
        roman = roman + 'CD'
        num = num%100
      else
        c = num/100
        roman = roman + 'C'*c
        num = num%100
      end
    elsif num/50!=0
      if num/10 == 9
        roman = roman + 'XC'
        num = num%10
      else
        l = num/50
        roman = roman + 'L'*l
        num = num%50
      end
    elsif num/10!=0
      if num/10 == 4
        roman = roman + 'XL'
        num = num%10
      else
        x = num/10
        roman = roman + 'X'*x
        num = num%10
      end
    elsif num/5!=0
      if num == 9
        roman = roman + 'IX'
        num = num%1
      else
        v = num/5
        roman = roman + 'V'*v
        num = num%5
      end
    elsif num/1!=0
      if num == 4
        roman = roman + 'IV'
        num = num%1
      else
        i = num/1
        roman = roman + 'I'*i
        num = num%1
      end
    end
  end
puts roman
end

puts 'Enter any number between 1 and 3000'
puts new_roman_numeral gets.chomp.to_i
