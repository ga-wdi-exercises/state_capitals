def repeat
    if (input == "yes" || input == "Yes" || input = "y" || input = "Y")
      shuffle shuffled_states
    else puts "Hope you had fun! Come back and play again soon."
  end
end

def shuffle test_array
  test_array.each do |state|
    prompt = "Capital: "
    puts state[:name]
    puts prompt
    answer = gets.chomp
      if answer == state[:capital]
        puts "Correct!"
        state[:correct] << 1
        puts "You've gotten #{state[:name]}'s capital correct #{state[:correct].length} times out of #{(state[:correct].length)+(state[:wrong].length)} attempts"
      else puts "Incorrect, the correct answer is #{state[:capital]}"
        state[:wrong] << 1
      end
    end
  end

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
  }]

  #
  # {
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

prompt = '>'

puts "Hi, there! What's your name?", prompt

name = gets.chomp

puts "Welcome to US State Capital Blitz, #{name}, the game that isn't a sport, but kind of sounds like one because of the word 'blitz'!"

puts "Are you ready to test your knowledge of US state capitals, #{name}? Here we go!"

shuffled_states = states.shuffle

shuffled_states.each do |state|
  state[:correct] = []
  state[:wrong] = []
end

shuffle shuffled_states

prompt = '>'

puts "Would you like to play again?", prompt
input = gets.chomp
repeat
    if (input == "yes" || input == "Yes" || input = "y" || input = "Y")
      shuffle shuffled_states
    else puts "Hope you had fun! Come back and play again soon."
  end
