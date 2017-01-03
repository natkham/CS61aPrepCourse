def old_roman_numeral num
	numerals = ''
	
	m = num / 1000
	thousands = 'M'
	d = (num % 1000) / 500
	fiveHun = 'D'
	c = ((num % 1000) % 500) / 100
	oneHun = 'C'
	l = (((num % 1000) % 500) % 100) / 50
	fifty = 'L'
	x = ((((num % 1000) % 500) % 100) % 50) / 10
	tens = 'X'
	v = (((((num % 1000) % 500) % 100) % 50) % 10) / 5
	five = 'V'
	i = num % 5
	ones = 'I'


	numerals = (thousands * m) + (fiveHun * d) + (oneHun * c) + (fifty * l) + (tens * x) + (five * v) + (ones * i)
	puts numerals
end