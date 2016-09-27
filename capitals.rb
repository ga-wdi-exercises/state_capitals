require 'pry'

# an array of state hashes
states =[
{
    name: "New York",
    capital: "Albany"
}, {
    name: "North Carolina",
    capital: "Raleigh"
}, {
    name: "Ohio",
    capital: "Columbus"
}]

index = 0
guesses_wrong = 0
guesses_right = 0

while true do
  while true do
    puts "What is the capital of #{states[index][:name]} ?"
    user_input = gets.chomp
    if user_input != states[index][:capital]
        guesses_wrong += 1
        puts "Try again"
        puts "You have guessed wrong #{guesses_wrong} times"
    end
    break if (user_input == states[index][:capital])
  end
  index += 1
  guesses_right += 1
  puts "You tried #{guesses_wrong} times and got it correct: #{guesses_right} times!"
end


# next keep a score of how many times it was wrong


# states.shuffle!  to keep the states shuffled always

binding.pry
puts "stop pry bug"
