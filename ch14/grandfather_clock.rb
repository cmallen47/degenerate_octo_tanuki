def gf_clock (&block)
  twelve_hour_value = [12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
  if block_given?
    twelve_hour_value[Time.new.hour].times do
      sleep 1
      block.call
    end
  end
end

gf_clock { puts "DONG!" }

