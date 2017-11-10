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
}, {
    name: "Arkansas",
    capital: "Little Rock",
    correct: [],
    incorrect:[]
}, {
    name: "California",
    capital: "Sacramento",
    correct: [],
    incorrect:[]
}, {
    name: "Colorado",
    capital: "Denver",
    correct: [],
    incorrect:[]
}, {
    name: "Connecticut",
    capital: "Hartford",
    correct: [],
    incorrect:[]
}, {
    name: "Delaware",
    capital: "Dover",
    correct: [],
    incorrect:[]
}, {
    name: "Florida",
    capital: "Tallahassee",
    correct: [],
    incorrect:[]
}, {
    name: "Georgia",
    capital: "Atlanta",
    correct: [],
    incorrect:[]
}, {
    name: "Hawaii",
    capital: "Honolulu",
    correct: [],
    incorrect:[]
}, {
    name: "Idaho",
    capital: "Boise",
    correct: [],
    incorrect:[]
}, {
    name: "Illinois",
    capital: "Springfield",
    correct: [],
    incorrect:[]
}, {
    name: "Indiana",
    capital: "Indianapolis",
    correct: [],
    incorrect:[]
}, {
    name: "Iowa",
    capital: "Des Moines",
    correct: [],
    incorrect:[]
}, {
    name: "Kansas",
    capital: "Topeka",
    correct: [],
    incorrect:[]
}, {
    name: "Kentucky",
    capital: "Frankfort",
    correct: [],
    incorrect:[]
}, {
    name: "Louisiana",
    capital: "Baton Rouge",
    correct: [],
    incorrect:[]
}, {
    name: "Maine",
    capital: "Augusta",
    correct: [],
    incorrect:[]
}, {
    name: "Maryland",
    capital: "Annapolis",
    correct: [],
    incorrect:[]
}, {
    name: "Massachusetts",
    capital: "Boston",
    correct: [],
    incorrect:[]
}, {
    name: "Michigan",
    capital: "Lansing",
    correct: [],
    incorrect:[]
}, {
    name: "Minnesota",
    capital: "St. Paul",
    correct: [],
    incorrect:[]
}, {
    name: "Mississippi",
    capital: "Jackson",
    correct: [],
    incorrect:[]
}, {
    name: "Missouri",
    capital: "Jefferson City",
    correct: [],
    incorrect:[]
}, {
    name: "Montana",
    capital: "Helena",
    correct: [],
    incorrect:[]
}, {
    name: "Nebraska",
    capital: "Lincoln",
    correct: [],
    incorrect:[]
}, {
    name: "Nevada",
    capital: "Carson City",
    correct: [],
    incorrect:[]
}, {
    name: "New Hampshire",
    capital: "Concord",
    correct: [],
    incorrect:[]
}, {
    name: "New Jersey",
    capital: "Trenton",
    correct: [],
    incorrect:[]
}, {
    name: "New Mexico",
    capital: "Santa Fe",
    correct: [],
    incorrect:[]
}, {
    name: "New York",
    capital: "Albany",
    correct: [],
    incorrect:[]
}, {
    name: "North Carolina",
    capital: "Raleigh",
    correct: [],
    incorrect:[]
}, {
    name: "North Dakota",
    capital: "Bismarck",
    correct: [],
    incorrect:[]
}, {
    name: "Ohio",
    capital: "Columbus",
    correct: [],
    incorrect:[]
}, {
    name: "Oklahoma",
    capital: "Oklahoma City",
    correct: [],
    incorrect:[]
}, {
    name: "Oregon",
    capital: "Salem",
    correct: [],
    incorrect:[]
}, {
    name: "Pennsylvania",
    capital: "Harrisburg",
    correct: [],
    incorrect:[]
}, {
    name: "Rhode Island",
    capital: "Providence",
    correct: [],
    incorrect:[]
}, {
    name: "South Carolina",
    capital: "Columbia",
    correct: [],
    incorrect:[]
}, {
    name: "South Dakota",
    capital: "Pierre",
    correct: [],
    incorrect:[]
}, {
    name: "Tennessee",
    capital: "Nashville",
    correct: [],
    incorrect:[]
}, {
    name: "Texas",
    capital: "Austin",
    correct: [],
    incorrect:[]
}, {
    name: "Utah",
    capital: "Salt Lake City",
    correct: [],
    incorrect:[]
}, {
    name: "Vermont",
    capital: "Montpelier",
    correct: [],
    incorrect:[]
}, {
    name: "Virginia",
    capital: "Richmond",
    correct: [],
    incorrect:[]
}, {
    name: "Washington",
    capital: "Olympia",
    correct: [],
    incorrect:[]
}, {
    name: "West Virginia",
    capital: "Charleston",
    correct: [],
    incorrect:[]
}, {
    name: "Wisconsin",
    capital: "Madison",
    correct: [],
    incorrect:[]
}, {
    name: "Wyoming",
    capital: "Cheyenne",
    correct: [],
    incorrect:[]
}]

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
