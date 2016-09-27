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
}, {
    name: "Florida",
    capital: "Tallahassee"
}, {
    name: "Georgia",
    capital: "Atlanta"
}, {
    name: "Hawaii",
    capital: "Honolulu"
}]

# shuffles and alters the states variable, this works!
states.shuffle! 

# Greets the user, this works!
# puts "Hey there! What's your name?"
# user_name = gets 
# puts "Welcome " + user_name + "! Here's the first state!"

# Loops through states
states.each do |state|
    puts "What is the capital of " + state[:name] + "?"
    user_answer = gets.chomp
    if user_answer == state[:capital]
        puts "You got it right!"
        # states[0].push[:score => "right"]
        else
        puts "You got it wrong!" 
        # states[0].push[:score => "wrong"]
    end
end

# Initializes new keys in the hashes that store the number of times
# a user gets a capital `correct` and the number of times the answer is `wrong`.

# puts "What is the capital of " + states[0][:name] + "?"
# user_answer = gets
# if user_answer === states[0][:capital]
#     puts "You got it right!"
#     # states[0].push[:score => "right"]
# else
#     puts "You got it wrong!" 
#     # states[0].push[:score => "wrong"]
# end

binding.pry
puts "Finished!"
