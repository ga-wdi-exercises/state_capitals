# an array of state hashes
states =[
{
    name: "Alabama",
    capital: "Montgomery"
}, {
    name: "Alaska",
    capital: "Juneau"
# }, {
#     name: "Arizona",
#     capital: "Phoenix"
# }, {
#     name: "Arkansas",
#     capital: "Little Rock"
# }, {
#     name: "California",
#     capital: "Sacramento"
# }, {
#     name: "Colorado",
#     capital: "Denver"
# }, {
#     name: "Connecticut",
#     capital: "Hartford"
# }, {
#     name: "Delaware",
#     capital: "Dover"
# }, {
#     name: "Florida",
#     capital: "Tallahassee"
# }, {
#     name: "Georgia",
#     capital: "Atlanta"
# }, {
#     name: "Hawaii",
#     capital: "Honolulu"
# }, {
#     name: "Idaho",
#     capital: "Boise"
# }, {
#     name: "Illinois",
#     capital: "Springfield"
# }, {
#     name: "Indiana",
#     capital: "Indianapolis"
# }, {
#     name: "Iowa",
#     capital: "Des Moines"
# }, {
#     name: "Kansas",
#     capital: "Topeka"
# }, {
#     name: "Kentucky",
#     capital: "Frankfort"
# }, {
#     name: "Louisiana",
#     capital: "Baton Rouge"
# }, {
#     name: "Maine",
#     capital: "Augusta"
# }, {
#     name: "Maryland",
#     capital: "Annapolis"
# }, {
#     name: "Massachusetts",
#     capital: "Boston"
# }, {
#     name: "Michigan",
#     capital: "Lansing"
# }, {
#     name: "Minnesota",
#     capital: "St. Paul"
# }, {
#     name: "Mississippi",
#     capital: "Jackson"
# }, {
#     name: "Missouri",
#     capital: "Jefferson City"
# }, {
#     name: "Montana",
#     capital: "Helena"
# }, {
#     name: "Nebraska",
#     capital: "Lincoln"
# }, {
#     name: "Nevada",
#     capital: "Carson City"
# }, {
#     name: "New Hampshire",
#     capital: "Concord"
# }, {
#     name: "New Jersey",
#     capital: "Trenton"
# }, {
#     name: "New Mexico",
#     capital: "Santa Fe"
# }, {
#     name: "New York",
#     capital: "Albany"
# }, {
#     name: "North Carolina",
#     capital: "Raleigh"
# }, {
#     name: "North Dakota",
#     capital: "Bismarck"
# }, {
#     name: "Ohio",
#     capital: "Columbus"
# }, {
#     name: "Oklahoma",
#     capital: "Oklahoma City"
# }, {
#     name: "Oregon",
#     capital: "Salem"
# }, {
#     name: "Pennsylvania",
#     capital: "Harrisburg"
# }, {
#     name: "Rhode Island",
#     capital: "Providence"
# }, {
#     name: "South Carolina",
#     capital: "Columbia"
# }, {
#     name: "South Dakota",
#     capital: "Pierre"
# }, {
#     name: "Tennessee",
#     capital: "Nashville"
# }, {
#     name: "Texas",
#     capital: "Austin"
# }, {
#     name: "Utah",
#     capital: "Salt Lake City"
# }, {
#     name: "Vermont",
#     capital: "Montpelier"
# }, {
#     name: "Virginia",
#     capital: "Richmond"
# }, {
#     name: "Washington",
#     capital: "Olympia"
# }, {
#     name: "West Virginia",
#     capital: "Charleston"
# }, {
#     name: "Wisconsin",
#     capital: "Madison"
# }, {
#     name: "Wyoming",
#     capital: "Cheyenne"
}]
statesIGotRight = []
statesIGotWrong = []

# FOR EACH ITERATION THIS WILL RUN ONE
states.each do |each_state|
                each_state[:name]
                each_state[:right] = 0
                each_state[:wrong] = 0
            end

            # Once the user has gone through all 50 states, ask them if they'd like to play again.
            splashPagePlayAgain     = 'Wanna play again?'

            def game_states(states, statesIGotRight, statesIGotWrong)
                                        # VARIABLE INSIDE OF GLOBAL ARE NOT AVAIL WITHIN THIS METHOD
                puts 'welcome to capitals'
                states.shuffle.each do |state|  # ITS A COUNTER FOR EACH INDL STATE
                              puts ' '
                              puts "whats the capital of: " + state[:name]
                              puts ' '
                              answered = gets.chomp.to_s
                              if answered == state[:capital]
                                state[:right] += 1
                                puts ' '
                                puts "yer answer-->   " + answered + "   <--be right"
                                puts ' '
                                statesIGotRight << state[:name]
                              else
                                state[:wrong] += 1
                                puts ' '
                                puts "yer answer-->   " + answered + "   <--be wrong"
                                puts ' '
                                statesIGotWrong << state[:name]
                              end
                              puts "right: " + state[:right].to_s
                              puts "wrong: " + state[:wrong].to_s
                           end
            puts ' '
            puts "HERE ARE THE STATES THAT GOT RIGHT ANSWERS: "
            puts statesIGotRight
            puts ' '
            puts "HERE ARE THE STATES THAT GOT WRONG ANSWERS: "
            puts statesIGotWrong
            # puts each_state[:name]
            # puts state[:state]
            # puts states[:state]
            # puts statesIGotWrong[:name]
end
game_states(states, statesIGotRight, statesIGotWrong)
