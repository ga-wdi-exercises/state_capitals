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
#Randomize the states*
#store correct and wrong answers (number of)*
#loop through all the states*
#take in a guess for each state*
#tell how many times it has been guessed correct out of total*
#ask if the user would like to play again

puts "Welcome, ready to test your knowledge of state capitals?"

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

puts "Welcome, ready to test your knowledge of state capitals?"

play = true

states = states.shuffle

while play == true do
  states.length.times do |index|
    state_to_guess = states[index][:name]
    puts "What is the capital of #{state_to_guess}?"
    guess = gets.chomp
    states[index][:correct] = 0
    states[index][:wrong] = 0
    if guess == states[index][:capital]
      states[index][:correct] =+ 1
      right = states[index][:correct]
      total = states[index][:correct] + states[index][:wrong]
      puts "Correct. You have gotten this state correct #{right} out of #{total} attempts"
    elsif
      states[index][:wrong] =+ 1
      right = states[index][:correct]
      total = states[index][:correct] + states[index][:wrong]
      puts "Correct. You have gotten this state correct #{right} out of #{total} attempts"
    end
  end
  puts "Do you want to play again?"
  again = gets.chomp
  if again != 'yes' || 'Yes' || 'y' || 'Y'
    play == false
  end
end
