$num = 0
def log block_description, &block
  indent = '  ' * $num
  puts " #{indent}Beginning \"#{block_description}\"..."
  $num  = $num + 1
  output = block.call
  $num = $num - 1
  puts "#{indent}...\"#{block_description}\" finished, returning: #{output}"
end

log 'first' do
  log 'second' do
    log 'third' do
      'I only came to Berkeley'
    end
    2+2
  end
  'UCBMFET'
end
