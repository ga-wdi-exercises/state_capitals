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

count = {
  correct: 0,
  incorrect: 0
}

puts "WELCOME."
def run_game (states, count)
  states = states.shuffle
  states.each do |state|
    puts "Guess capital of: " + state[:name]
    response = gets.chomp
    if response == state[:capital]
      puts "Correct!"
      count[:correct] += 1
    else
      puts "Try again!"
      count[:incorrect] += 1
    end
    puts "Incorrect: " + count[:incorrect].to_s
    puts "Correct: " + count[:correct].to_s
  end
end
run_game(states, count)
puts "You guessed " + count[:correct].to_s + " out of 50"
puts "Would you like to play again? (Y/N)"
answer = gets.chomp
if answer.upcase == "Y"
  run_game(states, count)
else
  puts("goodbye!")
end
