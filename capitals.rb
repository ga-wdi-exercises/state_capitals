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

puts "Welcome! This games tests your knowlege of U.S. capitals. Enter the capital of each state that appears."

states.shuffle!
    states.map do |state|
        puts "What is the capital of " + state[:name] + "?"
        input = gets.chomp
        if input == state[:capital]
            state[:correct] += 1 
            puts "#{input} is correct"
        else
            state[:wrong] += 1
            puts "#{input} is incorrect"
        end
    end