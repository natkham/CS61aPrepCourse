beer = 99
while beer > 0
	if beer == 1
		puts beer.to_s + ' bottle of beer on the wall,'
		puts beer.to_s + ' bottle of beer.'
	elsif beer > 1
		puts beer.to_s + ' bottles of beer on the wall,'
		puts beer.to_s + ' bottles of beer.'
	end
	beer = beer - 1
	puts 'Take one down and pass it around,'
	if beer == 1
		puts beer.to_s + ' bottle of beer on the wall.'
	elsif beer == 0
		puts 'No more bottles of beer on the wall.'
	elsif beer > 1
		puts beer.to_s + ' bottles of beer on the wall.'
	end
end

puts 'No more bottles of beer on the wall,'
puts 'No more bottles of beer.'
puts 'Go to the store and buy some more,'
puts '99 bottles of beer on the wall.'