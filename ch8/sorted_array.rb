a = []
a << gets
s = a.pop
words = s.split(',')
words.sort!
words.each { |v| puts "#{v.lstrip}" }




