# an array of state hashes
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
}]


#welcome message*
#Randomize the states
#store correct and wrong answers (number of)
#loop through all the states
#take in a guess for each state

puts "Welcome, ready to test your knowledge of state capitals?"

states.length.times do |index|
  states = states.shuffle
  state_to_guess = states[index][:name]
  puts "What is the capital of #{state_to_guess}?"
  guess = gets.chomp
end
