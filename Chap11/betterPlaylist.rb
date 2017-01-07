def musicShuffle array
	shuffle array, []
end

def shuffle unshuffled, shuffled
	x = 0
	times = unshuffled.length / 10 + 2
	list = unshuffled.sort
	
	while x < times
		stillUnshuffled = []
		while list.length >= 0
			if list.length == 0
				break
			end

			if list.length == 1
				shuffled.push list[0]
				list.pop
				break
			end

			ind = rand(list.length)
			song = list[ind]
			song2 = if ind % 2 == 0
				list[0]
			elsif ind % 2 != 0
				list.last
			end

			list.each do |title|
				if (title != song) && (title != song2)
					stillUnshuffled.push title
				end
			end

			shuffled.push song
			if song2 != song
				shuffled.push song2
			end

			list = stillUnshuffled
		end
		x = x + 1
	end
	return shuffled
end

puts musicShuffle(['A', 'B', 'C', 'D', 'E'])