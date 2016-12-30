puts 'Talk to your Grandma.'
input = ''
while true
	input = gets.chomp
	if input == 'BYE'
		break
	elsif input != input.upcase
		puts 'HUH?! SPEAK UP, SONNY!'
	elsif input == input.upcase
		year = 0
		while !((year > 1929) && (year < 1951))
			year = rand(1951)
		end
		puts 'NO, NOT SINCE ' + year.to_s + '!'
	end
end