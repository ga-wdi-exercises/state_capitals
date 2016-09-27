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

# shuffles and alters the states variable 
states.shuffle! 

# Greets the user
puts "Hey there! What's your name?"
user_name = gets 
puts "Welcome " + user_name + "! Here's the first state!"

binding.pry
puts "Finished!"
