def logger(description, &block) 
  puts "starting #{description}..."
  return_value = block.call
  puts "finished #{description}. #{return_value}"
end

logger 'running the block...' do
  puts 'inside the block' 
  'Have a nice day.'
end
