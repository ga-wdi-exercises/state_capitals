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
}, {
    name: "Arkansas",
    capital: "Little Rock"
}, {
    name: "California",
    capital: "Sacramento"
}, {
    name: "Colorado",
    capital: "Denver"
}
]


states.each do |state|
    state[:correct] = 0
    state[:wrong] = 0
end

puts "Welcome! What's your name?"
user = gets.chomp


    states.shuffle.map do |state|
        puts "#{user}, What is the capital of " + state[:name] + "?"
        input = gets.chomp
        if input == state[:capital]
            state[:correct] += 1 
            puts "#{input} is correct ^_^"
        else
            state[:wrong] += 1
            puts "#{input} is incorrect :("
        end
        total = state[:correct] + state[:wrong]
        puts "Your current score is " + state[:correct].to_s + " out of " + total.to_s  
    end
