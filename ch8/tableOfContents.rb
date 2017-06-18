chapters = [['Getting Started', 1], ['Numbers', 9], ['Letters', 13]]
puts('Table of Contents'.center(46))
count = 1
chapters.each do |chap|
  name = chap[0]
  page = chap[1]
  left = 'Chapter ' + count.to_s + ': ' + name
  right = 'page ' + page.to_s
  puts left.ljust(26) + right.rjust(20)
  count = count + 1
end
