# an array of state hashes
# Make sure the states don't appear in alphabetical order in the prompts. This will make the game a bit more challenging for the user.

# Provide a welcome message to introduce the player to the game.

# Initialize new keys in the hashes that store the number of times a user gets a capital correct and the number of times the answer is wrong.

# Through all 50 states, prompt the user to name the capital of the state. If the answer is correct, display a message saying so increment the correct key. If the answer is wrong, display a message saying so and increment the wrong key. After each prompt, display a message telling the reader how many times the state was answered correctly out of the total number of times answered.

# Once the user has gone through all 50 states, ask them if they'd like to play again. If they choose to do so, set the order of how the prompts appear to start with the ones they got wrong the most often.

puts "Welcome to the state capitals game."
puts "What is your name?"
input = gets.chomp.to_s

puts "Would you like to play, " +input+"?"
reply = gets.chomp.to_s
if reply == "yes"

  states =[{
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

  states.map do |state|
    state[:correct]=0
    state[:wrong]=0
  end

    states.shuffle.each_with_index do |state, index|
      puts "What is the capital of "+ state[:name] + "?"
      answer = gets.chomp.to_s
        if answer == state[:capital]
          puts "That's right!"
          states[index][:correct] +=1
          puts "You got 1 out of 1 correct."

        else
          puts "That's not right."
          states[index][:wrong] +=1
          puts "You got 0 out of 1 correct."

        # else
          # break if answer == "quit"
        end

    end

end
