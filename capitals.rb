# an array of state hashes
@states =[
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

@states.each do | state |
    state[:correct] = 0
    state[:wrong] = 0
end

def shuffle_states
    @states = @states.shuffle
end

def reset
    @states_remaining = 50
    @correct_answers = 0
    @incorrect_answers = 0
    puts "Welcome to \"Learn Our State Capitals\"!\n The objective of the game is to guess the correct state capital for the corresponding state.\n The game will keep a running tally of your correct and incorrect answers.\n Ready?\n Let's Plays!\n\n"

end

def final_tally
    puts "Correct Answers: #{@correct_answers}"
    puts "Incorrect Answers: #{@incorrect_answers}\n\n"
end

def update state
    @states_remaining -= 1
    puts "States Remaining: #{@states_remaining}\n\n"
    total = state[:correct] + state[:wrong]
    puts "You have answered this quetion correctly #{state[:correct]} out of #{total} times."
end

def play_game
    @states.each do |state|
        puts "What is the capital of #{state[:name]}\n\n"
        capital = gets.chomp
        capital = capital.split.map{|word|word.capitalize}.join(" ")
        if capital == state[:capital]
            puts "You Got It!"
            state[:correct] = state[:correct] += 1
            update state
            @correct_answers +=1
            puts total
        else
            puts "Correct Answer: #{state[:capital]}"
            puts "Better Luck Next Time"
            state[:wrong] = state[:wrong] += 1
            update state
            @incorrect_answers +=1
        end
    end
end

def play_again
    puts "Would you like to play again? Type Yes or No"
    response = gets.chomp.capitalize!
    if response == "Yes"
        shuffle_states
        reset
        play_game
        final_tally
        play_again
    else
        return
    end
end

shuffle_states
reset
play_game
final_tally
play_again


