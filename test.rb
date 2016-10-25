states =[
{
    name: "Alabama",
    capital: "Montgomery"
}, {
    name: "Alaska",
    capital: "Juneau"
}, {
    name: "Arizona",
    capital: "Phoenix"
}
]

states = states.shuffle

puts "welcome to the game"

states.each do |state|
  states[0][:correct] = 0
  states[0][:incorrect] = 0
end

puts "Correctly guess the capital of: " + states[0][:name]
response = gets.chomp

if response == states[0][:capital]
  puts "Correct!"
  states[0][:correct] += 1
  puts "Correct Guesses: " + states[0][:correct].to_s
else response != states[0][:capital]
  puts "Incorrect! The correct answer is: " + states[0][:capital]
  states[0][:incorrect] += 1
  puts "Incorrect Guesses: " + states[0][:incorrect].to_s
end
