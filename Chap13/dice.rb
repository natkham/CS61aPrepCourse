class Die
	def initialize
		roll
	end

	def roll
		@numberShowing = 1 + rand(6)
	end

	def showing
		@numberShowing
	end

	def cheat num
		if num < 1
			puts 'Number cannot be less than 1.'
			return
		elsif num > 6
			puts 'Number cannot be greater than 6.'
			return
		else
			@numberShowing = num
			puts 'Die set to show side with ' + @numberShowing.to_s + ' .'
		end
	end
end

die = Die.new
puts die.cheat(0)
puts die.cheat(4)
puts die.cheat(7)