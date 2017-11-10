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
reset = true
total_correct = 0
total_wrong = 0
shuffled_states = states.shuffle
shuffled_states.each do |state|
  state[:correct_answers]=0
  state[:wrong_answers]=0
end
puts "Would you like to play a game with States and Capitals?"
user_start = gets.chomp
if user_start == "yes"
  while reset == true
    puts "Enter the name of the capital for each of the states that will be listed below"
    shuffled_states.each do |state|

      puts state[:name]
      user_answer = gets.chomp
      if user_answer == state[:capital]
        state[:correct_answers] += 1
        total_correct += 1
        puts "Correct!  You have entered #{total_correct} correct answers"
      else
        state[:wrong_answers] += 1
        total_wrong += 1
        puts "Wrong!  You have entered #{total_wrong} wrong answers"
    end
    puts "This state capital has been entered correctly #{state[:correct_answers]} times and incorrectly #{state[:wrong_answers]} times"
    end
    puts "You have entered #{total_correct} correct answers, and #{total_wrong} wrong answers"
    puts "Would you like to play again?"
    user_reset = gets.chomp
    if user_reset != "yes"
      reset = false
    end
  end
end
