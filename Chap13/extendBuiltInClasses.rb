class Array
	def shuffle
		unshuffled = self
		shuffled = []

		while unshuffled.length > 0
			random = rand(unshuffled.length)
			current = 0
			stillUnshuffled = []

			unshuffled.each do |item|
				if current == random
					shuffled.push item
				else
					stillUnshuffled.push item
				end
				current = current + 1
			end
			unshuffled = stillUnshuffled
		end
		shuffled
	end
end

class Integer
	def factorial
		if self <= 1
			1
		else
			self * (self - 1).factorial
		end
	end
	def new_roman_numeral
		numeral = ''
		num = self
		rem = 0

		m = num / 1000
		rem = num % 1000
		thousands = 'M' * m

		hundreds = rem / 100
		if hundreds == 9
			hundredsNumerals = 'CM'
		elsif hundreds == 4
			hundredsNumerals = 'CD'
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
			tensNumerals = 'XC'
		elsif tens == 4
			tensNumerals = 'XL'
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
		numeral
	end
end