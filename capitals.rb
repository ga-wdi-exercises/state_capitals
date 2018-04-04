# An array of state hashes
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

# TEST STATES
test_states = [{
    name: "Arizona",
    capital: "Phoenix"
}, {
    name: "Arkansas",
    capital: "Little Rock"
}, {
    name: "California",
    capital: "Sacramento"
}]

# Make a welcome message for the user
puts "Welcome to the State Capital Game!"
# Display a prompt for each state to ask user for an answer
def play (array)
    play_again = 'y'
    new_array = array.shuffle
    while play_again == 'y'
        correct_sum = 0
        new_array.each{|state| 
            puts "What is the capital of #{state[:name]}"
            answer = gets.chomp
            # If the answer equals the capital name value
            if answer == state[:capital] 
                 # If correct doesnt exist, make it with score 1; else add 1 to it
                if !state[:correct]
                    state[:correct] = 1
                    correct_sum += 1
                    puts 'CORRECT'
                else 
                    state[:correct] += 1
                    correct_sum += 1
                    puts 'CORRECT'
                end
                else 
                # If incorrect doesnt exist, make it with score 1; else add 1 to it
                if !state[:incorrect]
                    state[:incorrect] = 1
                    puts 'WRONG'
                else 
                    state[:incorrect] += 1
                    puts 'WRONG'
                end
            end
            # Display amount correct out of amount answered. I'm still unsure why state[:incorrect/correct] need to_i to do additiion
            count = state[:correct].to_i + state[:incorrect].to_i
            puts state[:incorrect].to_i
            puts "You have answered this correct #{state[:correct] || 0}/#{count}"
        } 
        # Display total correct
        puts "You correctly answered #{correct_sum}/#{array.length}!"
        # Ask if want to play again
        puts "Would you like to play again? (y/n)"
        play_again_prompt = gets.chomp
        # If play again answer is 'n' then set play again to n so while loop stops
        if play_again_prompt === 'n'
            play_again === 'n' 
        else 
            # Set's the array used for the game to be sorted by highest incorrect first
            new_array = new_array.sort_by{|state| state[:incorrect].to_i}.reverse
            correct_sum = 0
        end
    end
end
# Start game
play(states)