puts 'Type in as many words as you want'
puts '(Press enter each time you finish typing a word'
puts 'If you want to quit, press enter on empty line)'

puts ''

sortedWords = []
while true
	word = gets.chomp
	if word == ''
		break
	elsif word != ''.chomp
		sortedWords.push(word)
	end
end

puts sortedWords.sort