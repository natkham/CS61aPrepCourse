puts 'What year were you born in?'
year = gets
puts 'What month were you born in? (type month number)'
month = gets
puts 'What day were you born on? (type date number)'
date = gets

birth = Time.local(year, month, date)
current = Time.new

ageInSeconds = current - birth
secondsInYear = 60 * 60 * 24 * 365
ageInYears = ageInSeconds / secondsInYear
age = ageInYears.to_i

puts
puts 'You\'re ' + age.to_s + '?'
puts
puts 'SPANK!' * age