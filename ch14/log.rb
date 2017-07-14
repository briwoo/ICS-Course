def log block_description, &block
  puts "Beginning \"#{block_description}\"..."
  output = block.call
  puts "...\"#{block_description}\" finished, returning: #{output}"
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
