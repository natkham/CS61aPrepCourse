chapter = ['Getting Started', 'Numbers', 'Letters']
page = ['1', '9', '13']

width = 50
ch = 1
pg = 0
puts ('Table of Contents'.center(width))
puts ''
chapter.each do |chap|
	if chap.length > 7
		puts ('Chapter ' + ch.to_s + ':  ' + chap) + ('page'.rjust((width/2) - (chap.length - 7))) + (page[pg].rjust(3))
	elsif 
		puts ('Chapter ' + ch.to_s + ':  ' + chap) + ('page'.rjust(width/2)) + (page[pg].rjust(3))
	end
	ch = ch + 1
	pg = pg + 1
end