$indent = 0

def log logDesc, &block
	before = '  ' * $indent
	puts before + 'Beginning "' + logDesc + '"...'
	$indent = $indent + 1
	
	result = block.call

	$indent = $indent - 1
	puts before + '..."' + logDesc + '" finished, returning: ' + result.to_s
end

log 'outer block' do
	log 'some little block' do
		log 'teeny-tiny block' do
			'LOTS OF LOVE'.downcase
		end
		84 / 2
	end
	log 'yet another block' do
		food = 'Indian'
		a = "I love #{food} food!"
		a
	end
	50 % 2 == 0
end