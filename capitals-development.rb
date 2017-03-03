require 'pry'

# an array of state hashes
states =[
{
    name: "Alabama",
    capital: "Montgomery"
}, {
    name: "California",
    capital: "Sacramento"
}, {
    name: "Delaware",
    capital: "Dover"
}]




# Greets the user, this works!
puts "Hey there! What's your name?"
user_name = gets.chomp 
puts "Welcome #{user_name}! Let the game begin!"

# shuffles and alters the states variable, this works!
states.shuffle! 
# Loops through states & initializes new keys in the hashes that store the number of times
# a user gets a capital `correct` and the number of times the answer is `wrong`
states.each do |state|
    puts "What is the capital of " + state[:name] + "?"
    user_answer = gets.chomp
        correct = 0
        total = states.length
        if user_answer == state[:capital]
            puts "You got it right!"
            state.merge!(score:"right")
            # correct.to_i +=
        else
            puts "You got it wrong!"
            state.merge!(score:"wrong")
        end
end

puts "You got #{correct} out of #{total}!"

binding.pry
puts "Finished!"