def profile blockDescription, &block
	on = false

	if on
		start = Time.new
		block.call
		duration = Time.new - start
		puts "#{blockDescription}: #{duration} seconds"
	else
		block.call
	end
end