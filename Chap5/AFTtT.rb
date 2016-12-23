###Full name greeting
puts 'What\'s your first name?'
first_name = gets.chomp
puts 'And your middle name?'
mid_name = gets.chomp
puts 'And last name?'
last_name = gets.chomp
puts 'Hello there! Nice to meet you, ' + first_name + ' ' + mid_name + ' ' + last_name + "."

puts ''

###Bigger, better favorite number
puts 'What is your favorite number?'
fav_num = gets.chomp
better_num = fav_num.to_i + 1
new_bet_num = better_num.to_s
puts fav_num + ' is a great number, but I think ' + new_bet_num + ' is the more superior number.'
puts 'But again, ' + fav_num + ' isn\'t too bad.'