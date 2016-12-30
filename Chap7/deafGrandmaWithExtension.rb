puts 'Talk to your Grandma.'
input = ''
bye = 0
while true
	input = gets.chomp
	if input == 'BYE'
		if bye == 2
			break
		elsif bye < 2
			bye = bye + 1
			puts 'SORRY I COULDN\'T HEAR YOU. WHAT?'
		end
	elsif input != input.upcase
		puts 'HUH?! SPEAK UP, SONNY!'
		bye = 0
	elsif input == input.upcase
		year = 0
		while !((year > 1929) && (year < 1951))
			year = rand(1951)
		end
		puts 'NO, NOT SINCE ' + year.to_s + '!'
		bye = 0
	end
end