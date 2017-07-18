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
#ask if the user would like to play again*

puts "Welcome, ready to test your knowledge of state capitals?"

play = true

states = states.shuffle
total_correct = 0
states.each do |state|
  state[:correct] = 0
  state[:wrong] = 0
  state[:total] = 0
end

while play == true do

  states.each do |state|

    state_to_guess = state[:name]
    puts "What is the capital of #{state_to_guess}? (type 'hint' for a hint)."
    guess = gets.chomp

    if guess == 'hint'
      capital_start = state[:capital][0,3]
      puts "The capital starts with #{capital_start}."
      puts "What is the capital of #{state_to_guess}?"
      guess = gets.chomp
    end

    if guess == state[:capital]
      state[:correct] += 1
      state[:total] += 1
      total_correct += 1
      puts "Correct. You have gotten this state correct #{state[:correct]} out of #{state[:total]} attempts"
      puts "You have gotten #{total_correct} states right this round."
      puts "----------------"

    else
      state[:wrong] += 1
      state[:total] += 1
      puts "Wrong. You have gotten this state correct #{state[:correct]} out of #{state[:total]} attempts"
      puts "You have gotten #{total_correct} states right this round."
      puts "----------------"
    end

  end

  puts "You got #{total_correct} correct this round. Do you want to play again?"
  again = gets.chomp
  if (again != 'yes') && (again != 'Yes') && (again != 'y') && (again != 'Y')
    play = false
  else
    total_correct = 0
    states = states.sort_by{ |item| item[:correct] }
  end
end
