def romanToInteger numeral
	romValues = {}
	romValues['i'] = 1
	romValues['v'] = 5
	romValues['x'] = 10
	romValues['l'] = 50
	romValues['c'] = 100
	romValues['d'] = 500
	romValues['m'] = 1000
	total = 0
	ind = 0

	while ind < numeral.length
		a = numeral[ind].downcase
		value = romValues[a]

		if !value
			puts 'Not valid roman numeral.'
			return
		end

		if a == numeral[numeral.length - 1]
			total = total + value
		elsif a != numeral[numeral.length - 1]
			b = numeral[ind + 1].downcase
			if !romValues[b]
				puts 'Not valid roman numeral.'
				return
			end
			if value < romValues[b]
				total = total + romValues[b] - value
				ind = ind + 1
			else
				total = total + value
			end
		end
		ind = ind + 1
	end
	puts total
end