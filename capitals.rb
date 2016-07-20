

def runGame(states)
  states.each_with_index { |state, index|
    print "Name the capital of #{state[:name]}: "
    input = gets().strip.capitalize

    if input == "Hint"
      print "The first three letters are '#{state[:capital][0...3]}'. Name the capital: "
      input = gets().strip.capitalize
    end

    if input == state[:capital].capitalize
      states[index][:answer_record].push(1)
      states[index][:correct] += 1
      puts "You are correct!\n\n"

    else
      states[index][:answer_record].push(0)
      states[index][:incorrect] += 1
      puts "You are wrong, the capital of #{state[:name]} is #{state[:capital]}!\n\n"
    end
  }
  return states
end

def playAgainPrompt
  response = false
  while response != "yes" && response != "no"
    print "Would you like to play again? (Yes / No): "
    response = gets().to_s.downcase.strip
    puts response
  end
  if response == "yes"
    continue = true
    puts "\n\n------------------------------------------------------------------"
  else
    continue = false
  end
  return continue
end


def main
  # an array of state hashes
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

  # Shuffle the array
  states.shuffle!

  # Welcome message
  puts "Welcome to CapitalCom! You can do anything on CapitalCom! Anything at all!"
  puts "On CapitalCom the only limit is you, as long as you only want to practice state"
  puts "capitals on CapitalCom! The possibilities are endless! Or limited at fifty!"

  # On first run through, add additional keys to the array's hash
  states.each_with_index { |state, index |
    states[index][:answer_record] = []
    states[index][:incorrect] = 0
    states[index][:correct] = 0
  }

  # Set up loop for gameplay
  continue = true
  while continue == true
    states = runGame(states)
    # For subsequent plays, sort so the least correct are first
    states.sort_by! { |state| state[:correct] }

    # Get response to play or not
    continue = playAgainPrompt

  end
end

main

