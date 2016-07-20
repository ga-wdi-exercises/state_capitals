# an array of state hashes
states =[
  {
    name: "Alabama",
    capital: "Montgomery",
    tally: 0
  },
  {
    name: "Alaska",
    capital: "Juneau",
    tally: 0
  },
  {
    name: "Arizona",
    capital: "Phoenix",
    tally: 0
  },
  {
    name: "Arkansas",
    capital: "Little Rock",
    tally: 0
  },
  {
    name: "California",
    capital: "Sacramento",
    tally: 0
  },
  {
    name: "Colorado",
    capital: "Denver",
    tally: 0
  },

  {
    name: "Connecticut",
    capital: "Hartford",
    tally: 0
  },

  {
    name: "Delaware",
    capital: "Dover",
    tally: 0
  },

  {
    name: "Florida",
    capital: "Tallahassee",
    tally: 0
  },

  {
    name: "Georgia",
    capital: "Atlanta",
    tally: 0
  },

  {
    name: "Hawaii",
    capital: "Honolulu",
    tally: 0
  },

  {
    name: "Idaho",
    capital: "Boise",
    tally: 0
  },

  {
    name: "Illinois",
    capital: "Springfield",
    tally: 0
  },

  {
    name: "Indiana",
    capital: "Indianapolis",
    tally: 0
  },

  {
    name: "Iowa",
    capital: "Des Moines",
    tally: 0
  },

  {
    name: "Kansas",
    capital: "Topeka",
    tally: 0
  },

  {
    name: "Kentucky",
    capital: "Frankfort",
    tally: 0
  },

  {
    name: "Louisiana",
    capital: "Baton Rouge",
    tally: 0
  },

  {
    name: "Maine",
    capital: "Augusta",
    tally: 0
  },

  {
    name: "Maryland",
    capital: "Annapolis",
    tally: 0
  },

  {
    name: "Massachusetts",
    capital: "Boston",
    tally: 0
  },

  {
    name: "Michigan",
    capital: "Lansing",
    tally: 0
  },

  {
    name: "Minnesota",
    capital: "St. Paul",
    tally: 0
  },

  {
    name: "Mississippi",
    capital: "Jackson",
    tally: 0
  },

  {
    name: "Missouri",
    capital: "Jefferson City",
    tally: 0
  },

  {
    name: "Montana",
    capital: "Helena",
    tally: 0
  },

  {
    name: "Nebraska",
    capital: "Lincoln",
    tally: 0
  },

  {
    name: "Nevada",
    capital: "Carson City",
    tally: 0
  },

  {
    name: "New Hampshire",
    capital: "Concord",
    tally: 0
  },

  {
    name: "New Jersey",
    capital: "Trenton",
    tally: 0
  },

  {
    name: "New Mexico",
    capital: "Santa Fe",
    tally: 0
  },

  {
    name: "New York",
    capital: "Albany",
    tally: 0
  },

  {
    name: "North Carolina",
    capital: "Raleigh",
    tally: 0
  },

  {
    name: "North Dakota",
    capital: "Bismarck",
    tally: 0
  },

  {
    name: "Ohio",
    capital: "Columbus",
    tally: 0
  },

  {
    name: "Oklahoma",
    capital: "Oklahoma City",
    tally: 0
  },

  {
    name: "Oregon",
    capital: "Salem",
    tally: 0
  },

  {
    name: "Pennsylvania",
    capital: "Harrisburg",
    tally: 0
  },

  {
    name: "Rhode Island",
    capital: "Providence",
    tally: 0
  },

  {
    name: "South Carolina",
    capital: "Columbia",
    tally: 0
  },

  {
    name: "South Dakota",
    capital: "Pierre",
    tally: 0
  },

  {
    name: "Tennessee",
    capital: "Nashville",
    tally: 0
  },

  {
    name: "Texas",
    capital: "Austin",
    tally: 0
  },

  {
    name: "Utah",
    capital: "Salt Lake City",
    tally: 0
  },

  {
    name: "Vermont",
    capital: "Montpelier",
    tally: 0
  },

  {
    name: "Virginia",
    capital: "Richmond",
    tally: 0
  },

  {
    name: "Washington",
    capital: "Olympia",
    tally: 0
  },

  {
    name: "West Virginia",
    capital: "Charleston",
    tally: 0
  },

  {
    name: "Wisconsin",
    capital: "Madison",
    tally: 0
  },

  {
    name: "Wyoming",
    capital: "Cheyenne",
    tally: 0
}].shuffle
play = 0
puts "Welcome! lets test your knowledge of state capitals. Would you like to play?"
game = gets.chomp
if (game  == "Y" || "y" || "Yes" || "yes")
  play += 1
  states[1...5].each do |state|
    puts "quesion what is the capitol of #{state[:name]}"
    answer = gets.chomp
    cap = state[:capital]
    count  = state[:tally]
    if answer == cap
      count += 1
      puts "congrats! you are #{count} for #{play} on this one."
    else
      puts "sorry that was incorrect, you are #{count} for #{play} on this one."
      puts "The correct answer was #{cap}"
    end
  end
else
  puts "Thanks for playing! Bye"
end
while play < 10
  puts 'would you like to play again?'
  game = gets.chomp
  if (game  == "Y" || "y" || "Yes" || "yes")
    play += 1
    cap = states[:capital]
    count   = states[:tally]
    x = count - play
    states[1...5].each do |state|
        states.sort_by do |tally|
        states[:tally]
      end
    end
    puts "Question: what is the capital of #{state[:name]}"
    answer = gets.chomp

    if answer == cap
     count += 1
     puts "congrats! you are #{count} for #{play} on this one."
    else
     puts "sorry that was incorrect, you are #{count} for #{play} on this one."
     puts "The correct answer was #{cap}"
    end
  end
  else
     puts "you've scored:#{count} out of #{play}"
  end
end
