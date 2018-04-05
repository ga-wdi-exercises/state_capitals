states =
[{
name: "Alabama",
capital: "Montgomery"
},
{
name: "Wisconsin",
capital: "Madison"
}, {
name: "Wyoming",
capital: "Cheyenne"
}]

puts "Welcome Traveller"

states.shuffle!
# puts states[0][:name]
states.each do |state|
    puts "What is the capital of #{state[:name]}"
    capital = gets.chomp
    rightGuess = capital.capitalize == state[:capital]
    while rightGuess == false
        puts "Try again"
        capital = gets.chomp
        rightGuess = capital.capitalize == state[:capital]
    end
end

# answer = gets