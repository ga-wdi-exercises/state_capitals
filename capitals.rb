# an array of state hashes
states =[
{
    name: "Alabama",
    capital: "Montgomery",
    correct: [],
    incorrect: []
}, {
    name: "Alaska",
    capital: "Juneau",
    correct: [],
    incorrect: []
}, {
    name: "Arizona",
    capital: "Phoenix",
    correct: [],
    incorrect:[]
}]



# , {
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
# }]

states_shuffle = states.shuffle

puts "Welcome to the game!"

input = ""
play_again = ""
puts "What is the capital?"

until play_again == "No" do
  for i in 0..states_shuffle.length-1 do
    until input == states_shuffle[i][:capital] do
      puts "What is the capital of #{states_shuffle[i][:name]}"
      input = gets.chomp
      if input == states_shuffle[i][:capital]
        states_shuffle[i][:correct].push(1)
      elsif input != states_shuffle[i][:capital]
        states_shuffle[i][:incorrect].push(1)
      end
      puts "You have answered this state correctly #{states_shuffle[i][:correct].length} times out of #{states_shuffle[i][:correct].length + states_shuffle[i][:incorrect].length}"
    end
  end
  puts "Play again? (Yes/No)"
  play_again = gets.chomp
end
