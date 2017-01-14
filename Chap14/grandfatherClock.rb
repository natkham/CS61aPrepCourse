def grandfatherClock &block
	hour = Time.new.hour
	newHour = 0
	
	if hour >= 13
		newHour = hour - 12
	end

	if hour == 0
		newHour = 12
	end

	newHour.times do
		block.call	
	end
end

grandfatherClock do
	puts 'DONG!'
end