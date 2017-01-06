def dictionarySort array
	recDictSort array, []
end

def recDictSort unsorted, sorted
	if unsorted.length == 0
		return sorted
	end

	smallest = unsorted.pop
	stillUnsorted = []

	unsorted.each do |someWord|
		if someWord.downcase < smallest.downcase
			stillUnsorted.push smallest
			smallest = someWord
		else
			stillUnsorted.push someWord
		end
	end
	sorted.push smallest
	recDictSort stillUnsorted, sorted
end

puts dictionarySort(['saw', 'that', 'you', 'moved', 'On', 'with', 'Someone', 'new'])