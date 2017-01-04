def new_roman_numeral num
	numeral = ''
	rem = 0

	m = num / 1000
	rem = num % 1000
	thousands = 'M' * m

	hundreds = rem / 100
	if hundreds == 9
		hundredsNumerals = 'IM'
	elsif hundreds == 4
		hundredsNumerals = 'ID'
	elsif hundreds != 4 || hundreds != 9
		c = (rem % 500 / 100)
		if hundreds >= 5
			hundredsNumerals = 'D' + ('C' * c)
		elsif hundreds < 5
			hundredsNumerals = 'C' * c
		end
	end
	rem = rem % 100

	tens = rem / 10
	if tens == 9
		tensNumerals = 'IC'
	elsif tens == 4
		tensNumerals = 'IL'
	elsif tens != 4 || tens != 9
		x = (rem % 50 / 10)
		if tens >= 5
			tensNumerals = 'L' + ('X' * x)
		elsif tens < 5
			tensNumerals = 'X' * x
		end
	end
	rem = rem % 10

	if rem == 9
		ones = 'IX'
	elsif rem == 4
		ones = 'IV'
	elsif rem != 4 || rem != 9
		i = (rem % 5)
		if rem >= 5
			ones = 'V' + ('I' * i)
		elsif rem < 5
			ones = 'I' * i
		end
	end

	numeral = thousands + hundredsNumerals + tensNumerals + ones
	puts numeral
end