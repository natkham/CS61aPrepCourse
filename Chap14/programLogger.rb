def log logDescription, &block
	puts 'Beginning "' + logDescription + '"...'
	result = block.call
	puts '..."' + logDescription + '" finished, returning: ' + result.to_s
end

log 'outer block' do
	log 'some little block' do
		25 ** 0.5
	end

	log 'yet another block' do
		a = 'I like Thai food!'
		a[0..17]
	end

	true == false
end