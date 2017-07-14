def grandfatherClock &block
  currentTime = Time.new.hour
  if currentTime > 12
    currentTime = currentTime - 12
  end
  if currentTime == 0
    currentTime = 12
  end
  currentTime.times do
    block.call
  end
end

grandfatherClock do
  puts 'DONG!'
end
