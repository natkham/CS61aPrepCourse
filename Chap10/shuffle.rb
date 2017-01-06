def shuffle array
	rec_shuf array, []
end

def rec_shuf unshuffled, shuffled
	if unshuffled.length == 0
		return shuffled
	end

	chosen = unshuffled[rand(unshuffled.length)]
	still_unshuffled = []

	unshuffled.each do |word|
		if word != chosen
			still_unshuffled.push word
		end
	end
	shuffled.push chosen
	rec_shuf still_unshuffled, shuffled
end

puts (shuffle(['if', 'you', 'don\'t', 'know', 'let', 'me', 'go']))