# an array of state hashes
$states =[
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
}, {
    name: "Connecticut",
    capital: "Hartford"
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
}, {
    name: "Idaho",
    capital: "Boise"
}, {
    name: "Illinois",
    capital: "Springfield"
}, {
    name: "Indiana",
    capital: "Indianapolis"
}, {
    name: "Iowa",
    capital: "Des Moines"
}, {
    name: "Kansas",
    capital: "Topeka"
}, {
    name: "Kentucky",
    capital: "Frankfort"
}, {
    name: "Louisiana",
    capital: "Baton Rouge"
}, {
    name: "Maine",
    capital: "Augusta"
}, {
    name: "Maryland",
    capital: "Annapolis"
}, {
    name: "Massachusetts",
    capital: "Boston"
}, {
    name: "Michigan",
    capital: "Lansing"
}, {
    name: "Minnesota",
    capital: "St. Paul"
}, {
    name: "Mississippi",
    capital: "Jackson"
}, {
    name: "Missouri",
    capital: "Jefferson City"
}, {
    name: "Montana",
    capital: "Helena"
}, {
    name: "Nebraska",
    capital: "Lincoln"
}, {
    name: "Nevada",
    capital: "Carson City"
}, {
    name: "New Hampshire",
    capital: "Concord"
}, {
    name: "New Jersey",
    capital: "Trenton"
}, {
    name: "New Mexico",
    capital: "Santa Fe"
}, {
    name: "New York",
    capital: "Albany"
}, {
    name: "North Carolina",
    capital: "Raleigh"
}, {
    name: "North Dakota",
    capital: "Bismarck"
}, {
    name: "Ohio",
    capital: "Columbus"
}, {
    name: "Oklahoma",
    capital: "Oklahoma City"
}, {
    name: "Oregon",
    capital: "Salem"
}, {
    name: "Pennsylvania",
    capital: "Harrisburg"
}, {
    name: "Rhode Island",
    capital: "Providence"
}, {
    name: "South Carolina",
    capital: "Columbia"
}, {
    name: "South Dakota",
    capital: "Pierre"
}, {
    name: "Tennessee",
    capital: "Nashville"
}, {
    name: "Texas",
    capital: "Austin"
}, {
    name: "Utah",
    capital: "Salt Lake City"
}, {
    name: "Vermont",
    capital: "Montpelier"
}, {
    name: "Virginia",
    capital: "Richmond"
}, {
    name: "Washington",
    capital: "Olympia"
}, {
    name: "West Virginia",
    capital: "Charleston"
}, {
    name: "Wisconsin",
    capital: "Madison"
}, {
    name: "Wyoming",
    capital: "Cheyenne"
}]

$total_score = 0
$total_guesses = 0
def iterate_states(states_array)
    $states.shuffle!
    puts "let's play"
    puts "You will be given the name of the state. Type the name of the capital and press enter"
    states_array.each_with_index do |state, i|
        puts "What is the capital of " + state[:name] + "?"
        state_input = gets.chomp
        if state_input.downcase == state[:capital].downcase
            $total_score = $total_score + 1
            $total_guesses = $total_guesses + 1
            if !$states[i][:correct]
                $states[i][:correct] = 1
                $states[i][:guessed] = 1
            else
                $states[i][:correct] = $states[i][:correct] + 1
                $states[i][:guessed] = $states[i][:guessed] + 1
            end
            puts "     Right! Your total game score is #{$total_score} for #{$total_guesses}" 
            puts "     Your score for this state is #{$states[i][:correct]} for #{$states[i][:guessed]}"
                
            else
                $total_guesses = $total_guesses + 1
                if !$states[i][:correct]
                    $states[i][:correct] = 0
                    $states[i][:guessed] = 1
                
                else
                    $states[i][:guessed] = $states[i][:guessed] + 1
                end
                puts "     Wrong! Correct answer is #{$states[i][:capital]} Your total game score is #{$total_score} for #{$total_guesses}"
                puts  "    Your score for this state is #{$states[i][:correct]} for #{$states[i][:guessed]}"
            end
        end
        puts "Game Over. Do you want to play again?"
        input = gets.chomp
        if input == "yes"
            iterate_states($states)
        else
            puts "okay next time"
        end
    end


def start_game
    puts 'Welcome to the state capitial memorization game. Do you want to play?'
    input = gets.chomp
    if input == "yes"
        iterate_states($states)
        
        else
            puts "okay next time"
        end
end

start_game()


# puts 'Welcome to the state capitial memorization game. Do you want to play?'
# input = gets.chomp
# if input == "yes"
#     start_game(states)
# else
#     puts "okay next time"
# end

