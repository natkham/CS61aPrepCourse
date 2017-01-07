def musicShuffle array
	length = array.length
	x = length / 10 + 2
	while x > 0
		result = recMusicShuffle array, []
		x = x - 1
	end
	return result
end

def recMusicShuffle unshuffled, shuffled
	if unshuffled.length == 0
		return shuffled
	end

	ind = rand(unshuffled.length)
	song = unshuffled[ind]
	song2 = if ind % 2 == 0
		unshuffled[0]
	else
		unshuffled.last
	end
	stillUnshuffled = []
	
	unshuffled.each do |title|
		if (title != song) && (title != song2)
			stillUnshuffled.push title
		end
	end
	shuffled.push song
	if song2 != song
		shuffled.push song2
	end

	recMusicShuffle stillUnshuffled, shuffled
end

newPlaylist = musicShuffle(Dir['**/*.mp3'])

File.open 'playlist.m3u', 'w' do |f|
	newPlaylist.each do |mp3|
		f.write mp3 + "\n"
	end
end

puts 'Playlist created.'