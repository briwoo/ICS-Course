class OrangeTree
  def initialize
    @feet = 1
    @years = 0
    @oranges = 0
  end
  def one_year_passes
    @years = @years + 1
    @feet = @feet + rand(4) + 1
    if @years > 3
      @oranges = @oranges + rand(6) + 1
    end
    if @years > 8
      puts 'Your tree died'
      exit
    end
  end
  def height
    puts "Your tree is #{@feet} feet tall"
  end
  def age
    puts "Your tree is #{@years} years old"
  end
  def orangeCount
    puts "Your tree has #{@oranges} oranges"
  end
  def pickOrange
    if @oranges>0
      @oranges = @oranges - 1
      puts 'You picked an orange'
    else
      puts 'You have no oranges to pick'
    end
  end
end

tree = OrangeTree.new
tree.height
tree.age
tree.orangeCount
tree.pickOrange
tree.one_year_passes
tree.height
tree.age
tree.orangeCount
tree.pickOrange
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.height
tree.age
tree.orangeCount
tree.pickOrange
tree.orangeCount
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.age
tree.height
tree.orangeCount
tree.one_year_passes
