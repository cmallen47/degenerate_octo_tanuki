def logger(description, &block) 
  puts "starting #{description}..."
  return_value = block.call
  puts "finished #{description}. #{return_value}"
end

logger 'running the block...' do
  logger 'Running inside the block...' do 
    10 * 10
  end
end
