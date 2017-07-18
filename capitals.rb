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
# Y to start and restart the game
score = 0
play = "Y"

# set correct and wrong sates to 0
states.each do |state|
  state[:correct] = 0
  state[:wrong] = 0
end
# intial prompt
    puts "Do you know the state capitals?"
# shuffle states
      states = states.shuffle
# If Y game is active
      while play == "Y"
        states.each do |state|
          # prompt contains the states(symbol) name pulled from the array
          puts "What is the capital of #{state[:name]}?"
          # inputs first letter will alsways be capitalized
          answer = gets.chomp.upcase
          if answer.upcase == state[:capital].upcase
            # +1 if correct
            state[:correct]  += 1
            score  += 1
            # counts the total correct 
            puts "Correct #{state[:correct]} times and incorrectly #{state[:wrong]} times. Nice #{score} rights total."
            if answer == state[:capital]
              state[:correct]  += 1
              score  += 1
              puts "Nice #{state[:correct]} times and wrong #{state[:wrong]} times. Nice #{score} rights total."
            else
              state[:wrong]  += 1
              puts "WRONG! #{state[:capital]}. You guessed this right #{state[:correct]} times and WRONG! #{state[:wrong]} times. Good, job #{score} rights total."
            end
          else
            state[:wrong]  += 1
            puts "WRONG! #{state[:capital]}.You got this right #{state[:correct]} times and WRONG! #{state[:wrong]} times. Good, job #{score} rights total."
          end
        end

        puts "Try again, (Y/N)?"
        play = gets.chomp.upcase
       states = states.sort_by { |state| state[:correct]}
     end
