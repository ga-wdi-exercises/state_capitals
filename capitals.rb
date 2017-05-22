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

shuffled_states = states.shuffle

player = {
  correct: 0,
  incorrect: 0
}

puts "Welcome to \'State Capitals Game\'!\nWould you like to play?"
user_input = gets.chomp
if user_input.downcase == "yes"
      for state in shuffled_states
      puts "\nWhat is the capital of #{state[:name]}?"
      user_input = gets.chomp.downcase
      if user_input == state[:capital].downcase
             player[:correct] += 1
             puts "Correct!\nCorrect Answers: #{player[:correct]}\nIncorrect Answers: #{player[:incorrect]}\n(If you would like to quit, please enter \'quit\')"
           elsif user_input == "quit"
             break
           elsif
            player[:incorrect] +=  1
            puts "Incorrect!\nCorrect answer is #{state[:capital]}\nCorrect: #{player[:correct]}\nIncorrect: #{player[:incorrect]}\n(If you would like to quit, please enter \'quit\')"
      end
    end
elsif puts "See you next time!"
end

if
 player[:correct] + player[:incorrect] == 50
 puts "\nWould you like to play again?"
 user_input = gets.chomp
 shuffled_states = states.shuffle
 player = {
   correct: 0,
   incorrect: 0
 }
 if user_input.downcase == "yes"
       for state in shuffled_states
       puts "\nWhat is the capital of #{state[:name]}?"
       user_input = gets.chomp.downcase
       if user_input == state[:capital].downcase
              player[:correct] += 1
              puts "Correct!\nCorrect Answers: #{player[:correct]}\nIncorrect Answers: #{player[:incorrect]}\n(If you would like to quit, please enter \'quit\')"
            elsif user_input == "quit"
              break
            elsif
             player[:incorrect] +=  1
             puts "Incorrect!\nCorrect answer is #{state[:capital]}\nCorrect: #{player[:correct]}\nIncorrect: #{player[:incorrect]}\n(If you would like to quit, please enter \'quit\')"
       end
     end
 elsif puts "See you next time!"
 end
 end
