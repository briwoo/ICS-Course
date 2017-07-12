class Die
  def initialize
    roll
  end
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
  def cheat
    puts 'Enter number for die to show'
    num = gets.chomp.to_i
    if num>6 || num<1
      puts 'You can\'t cheat with an illogical number'
      puts "You actually rolled a #{@number_showing} "
    else
      @number_showing = num
      puts "You rolled a #{@number_showing}"
    end
  end
end

puts Die.new.cheat
