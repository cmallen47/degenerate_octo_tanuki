class Scanner

  def initialize(start = 1, finish = 10)
  	@start   = start
  	@end     = finish
  	@current = start
  	@scan_range = (start..finish).to_a
  end

  def scan
  	@current
  end
end
