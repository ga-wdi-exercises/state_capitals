puts "Learn the states!"

states = [ {
    name: "Alabama",
    capital: "Montgomery"
}, {
    name: "Alaska",
    capital: "Juneau"
}, {
    name: "Arizona",
    capital: "Phoenix"
}
].shuffle
#users = ["Alice", "Bob", "Carol"]
#index = 0
# while index < users.length
#   puts users[index]
#   index += 1
# end


#state = states[i]




i = 0
tally = 0
while i < states.length
    #puts states[i][:name]
    state = states[i][:name]
    capital = states[i][:capital]
    i += 1
    puts "What is the capital of #{state}?"
    user_answer = gets.chomp
        if user_answer != capital
            puts "Nope."
        elsif user_answer = capital
            tally += 1
        end
        puts tally
        puts "Would you like to play again?"
            user_input = gets.chomp
            if user_input == "yes"
                
            end
end







# ask them what the capital of any given state in the array is
#for each state in the states array, display it in the question "what is the capital of ${state}?"
# if they are wrong, tell them to try again
#if they are right, move on to the next state in the array

