# an array of state hashes
states =[{
    name: "Alabama",
    tally: 0,
    capital: "Montgomery"
}, {
    name: "Alaska",
    tally: 0,
    capital: "Juneau"
}, {
    name: "Arizona",
    tally: 0,
    capital: "Phoenix"
}, {
    name: "Arkansas",
    tally: 0,
    capital: "Little Rock"
}, {
    name: "California",
    tally: 0,
    capital: "Sacramento"
}, {
    name: "Colorado",
    tally: 0,
    capital: "Denver"
}, {
    name: "Connecticut",
    tally: 0,
    capital: "Hartford"
}, {
    name: "Delaware",
    tally: 0,
    capital: "Dover"
}, {
    name: "Florida",
    tally: 0,
    capital: "Tallahassee"
}, {
    name: "Georgia",
    tally: 0,
    capital: "Atlanta"
}, {
    name: "Hawaii",
    tally: 0,
    capital: "Honolulu"
}, {
    name: "Idaho",
    tally: 0,
    capital: "Boise"
}, {
    name: "Illinois",
    tally: 0,
    capital: "Springfield"
}, {
    name: "Indiana",
    tally: 0,
    capital: "Indianapolis"
}, {
    name: "Iowa",
    tally: 0,
    capital: "Des Moines"
}, {
    name: "Kansas",
    tally: 0,
    capital: "Topeka"
}, {
    name: "Kentucky",
    tally: 0,
    capital: "Frankfort"
}, {
    name: "Louisiana",
    tally: 0,
    capital: "Baton Rouge"
}, {
    name: "Maine",
    tally: 0,
    capital: "Augusta"
}, {
    name: "Maryland",
    tally: 0,
    capital: "Annapolis"
}, {
    name: "Massachusetts",
    tally: 0,
    capital: "Boston"
}, {
    name: "Michigan",
    tally: 0,
    capital: "Lansing"
}, {
    name: "Minnesota",
    tally: 0,
    capital: "St. Paul"
}, {
    name: "Mississippi",
    tally: 0,
    capital: "Jackson"
}, {
    name: "Missouri",
    tally: 0,
    capital: "Jefferson City"
}, {
    name: "Montana",
    tally: 0,
    capital: "Helena"
}, {
    name: "Nebraska",
    tally: 0,
    capital: "Lincoln"
}, {
    name: "Nevada",
    tally: 0,
    capital: "Carson City"
}, {
    name: "New Hampshire",
    tally: 0,
    capital: "Concord"
}, {
    name: "New Jersey",
    tally: 0,
    capital: "Trenton"
}, {
    name: "New Mexico",
    tally: 0,
    capital: "Santa Fe"
}, {
    name: "New York",
    tally: 0,
    capital: "Albany"
}, {
    name: "North Carolina",
    tally: 0,
    capital: "Raleigh"
}, {
    name: "North Dakota",
    tally: 0,
    capital: "Bismarck"
}, {
    name: "Ohio",
    tally: 0,
    capital: "Columbus"
}, {
    name: "Oklahoma",
    tally: 0,
    capital: "Oklahoma City"
}, {
    name: "Oregon",
    tally: 0,
    capital: "Salem"
}, {
    name: "Pennsylvania",
    tally: 0,
    capital: "Harrisburg"
}, {
    name: "Rhode Island",
    tally: 0,
    capital: "Providence"
}, {
    name: "South Carolina",
    tally: 0,
    capital: "Columbia"
}, {
    name: "South Dakota",
    tally: 0,
    capital: "Pierre"
}, {
    name: "Tennessee",
    tally: 0,
    capital: "Nashville"
}, {
    name: "Texas",
    tally: 0,
    capital: "Austin"
}, {
    name: "Utah",
    tally: 0,
    capital: "Salt Lake City"
}, {
    name: "Vermont",
    tally: 0,
    capital: "Montpelier"
}, {
    name: "Virginia",
    tally: 0,
    capital: "Richmond"
}, {
    name: "Washington",
    tally: 0,
    capital: "Olympia"
}, {
    name: "West Virginia",
    tally: 0,
    capital: "Charleston"
}, {
    name: "Wisconsin",
    tally: 0,
    capital: "Madison"
}, {
    name: "Wyoming",
    tally: 0,
    capital: "Cheyenne"
}].shuffle


puts "Try to memorize your state capitals"
response = ''
play_counter = 1
#while true
states.each do |question|
  puts "What is the capital of #{question[:name]}?"
  response = gets.chomp
  if response.capitalize == question[:capital]
    question[:tally] += 1
    puts "Correct. You are #{question[:tally]} for #{play_counter} on this state."
  else
    puts "Incorrect. The capital of #{question[:name]} is #{question[:capital]}"
  end
end
