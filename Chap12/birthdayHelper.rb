birthDates = {}

File.read('birthdates.txt').each_line do |line|
	line = line.chomp

	ind = 0

	while ind < line.length
		if line[ind] == ','
			comma = ind
			break
		end
		ind = ind + 1
	end

	name = line[0..(comma - 1)]
	date = line[-12..-1]

	birthDates[name] = date
end

puts 'Enter the name of the person whose birthday you would like to know:'
person = gets.chomp
date = birthDates[person]

months = {}
months['Jan'] = 1
months['Feb'] = 2
months['Mar'] = 3
months['Apr'] = 4
months['May'] = 5
months['Jun'] = 6
months['Jul'] = 7
months['Aug'] = 8
months['Sep'] = 9
months['Oct'] = 10
months['Nov'] = 11
months['Dec'] = 12

if date == nil
	puts 'Sorry, but I don\'t know that one.'
else
	current = Time.new
	birth = Time.local(date[-4 .. -1], months[date[-12 .. -10]], date[-8, 2])
	ageInSeconds = current - birth
	secondsInYear = 60 * 60 * 24 * 365
	nextAgeInYears = (ageInSeconds / secondsInYear) + 1
	age = nextAgeInYears.to_i
	puts person + '\'s birthday is on ' + date[0 .. 5] + '.'
	puts 'They will be turning ' + age.to_s + '.'
end