puts 'Choose starting year: '
startYear = gets.to_i
puts 'Choose ending year: '
endYear =  gets.to_i
year = startYear

puts 'Leap Years Between ' + startYear.to_s + ' and ' + endYear.to_s + ':'
while year <= endYear
	if (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0))
		puts year
	end
	year = year + 1
end
