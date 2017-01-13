class OrangeTree
	def initialize
		@height = 1
		@age = 0
		@oranges = 0
		@alive = true
		puts 'An orange tree is planted.'
	end

	def height
		puts "The orange tree is #{@height} feet tall."
	end

	def age
		puts "Age of orange tree: #{@age}"
	end

	def one_year_passes
		puts 'One year passes by.'
		@age = @age + 1
		@height = @height + 1
		@oranges = 0
		time
	end

	def count_the_oranges
		puts "Number of oranges on the tree: #{@oranges}"
	end

	def pick_an_orange
		if @oranges == 0
			puts "There's no more oranges to pick this year."
		else
			@oranges = @oranges - 1
			puts "Mmm, that was delicious!"
		end
	end

	private

	def young?
		@age <= 3
	end

	def sort_of_mature?
		@age > 3 && @age < 5
	end

	def mature?
		@age > 5 && @age < 12
	end

	def old?
		@age > 12 && @age <= 15
	end

	def alive?
		@age <= 15
	end

	def time
		if young?
			@oranges = 0
		elsif sort_of_mature?
			@oranges = rand(4)
		elsif mature?
			@oranges = rand(20)
		elsif old?
			@oranges = rand(7)
		end

		if !alive?
			puts "The tree has become too old and is now dead."
			exit
		end
	end
end
