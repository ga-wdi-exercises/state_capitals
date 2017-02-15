

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
      capital: "Phoenix"}] #Remove these once done testing
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
      # rightWrong: = 0
  # }]

  states.each do |state|
    state[:rightWrong] = 0
  end

  def playTheGame(stateArray)
  # initial variables
  right = 0
  wrong = 0
  counter = 1
  #shuffle states
  stateArray.shuffle!

  stateArray = stateArray.sort_by { |state| state[:rightWrong]}

  #puts stateArray

  puts " "," ", "Welcome to the state capitals game!", "Here's how it works...",
  "You will be given a random state." , "Respond with the correct state capital (not case sensitive)",
  ">>> If you need a hint, respond with: 'hint'", " "

  #loops through all the states
  stateArray.each do |state|

    puts ' '
    puts '------------'
    puts "Question # #{counter}"
    puts '------------'
    #Ask user for state capital
    puts 'What is the capital of : ' + state[:name]
    response = gets.chomp.downcase

    if response == 'hint'
      puts ' '
      puts "Hint: #{state[:capital][0..2]}"
      puts ' '
      puts 'What is the capital of : ' + state[:name]
      response = gets.chomp.downcase
    end

     #compares answer
     if response == state[:capital].downcase
       right = right + 1
       state[:rightWrong] = state[:rightWrong] + 1
       answer = 'correct'
     else
       wrong = wrong + 1
       state[:rightWrong] = state[:rightWrong] - 1
       answer = 'incorrect'
     end

     #Return Result
     puts '--'
     puts "Your answer: #{response} was #{answer}. The capital of #{state[:name]} is #{state[:capital]}."
     puts ' '
     puts '--'
     puts 'Scoreboard'
     puts '--'
     puts "Questions answered: #{counter}/50"
     puts "Correct responses: #{right}/#{counter}"
     puts "Incorrect Responses #{wrong}/#{counter}"
     counter = counter + 1
  end

  puts ' '
  puts stateArray.inspect
  puts ' '


end
playYN = ''

until playYN == 'no'
  puts 'Would you like to play the state capitals game?'
  playYN = gets.chomp.downcase
  unless playYN == 'no'
    playTheGame(states)
  end
end

puts 'goodbye!'
