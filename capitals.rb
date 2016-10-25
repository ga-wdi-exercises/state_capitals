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

game_over = false

loop do
states.shuffle!
break if game_over

states_correct = []
states_incorrect = []


states.each do |state|
  puts ""
  puts "What is the capitol of #{state[:name]}??"
  my_guess = gets.chomp
  puts "You guessed " + my_guess
  if my_guess == state[:capital]
    puts "CORRECT!"
    states_correct << state
    puts "You guessed #{states_correct.length} state capitol(s) correctly"
    puts "You guessed #{states_incorrect.length} state capitol(s) incorrectly"
    #
  else
    puts "WRONG!"
    states_incorrect << state
    puts "You guessed #{states_correct.length} state capitol(s) correctly"
    puts "You guessed #{states_incorrect.length} state capitol(s) incorrectly"
    #
  end
end

puts ""
puts "Do you want to play again? (Y or N)"
play_again = gets.chomp
play_again.upcase
game_over=!(play_again == "Y")
end
