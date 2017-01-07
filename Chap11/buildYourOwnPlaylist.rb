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

newPlaylist = shuffle(Dir['**/*.mp3'])

File.open 'playlist.m3u', 'w' do |f|
	newPlaylist.each do |mp3|
		f.write mp3 + "\n"
	end
end

puts 'done'