# require 'pry'

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
}].shuffle

index = 0

while true do
  while true do
    wrong = 0
    right = 0
    puts "What's capital of #{states[index][:name]} ?"
    user_input = gets.chomp
    if user_input != states[index][:capital]
        wrong += 1
        puts "Try again"
    end
    break if (user_input == states[index][:capital])
  end
  index += 1
  right += 1
  puts "You guessed wrong #{wrong} times and got it correct: #{right} times!"
end


# next keep a score of how many times it was wrong


# states.shuffle!  to keep the states shuffled always

# binding.pry
# puts "stop pry bug"
