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
    capital: "Phoenix"}]
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
i = 0
correct_answers = 0
wrong_answers = 0
for united in states
  united[:correct] = 0
  united[:wrong] = 0
end
puts "Welcome to the United States Capitals Game!  If you don't get all 50 right, you're not a REAL MURICAN!"
states.shuffle!
while i == 0
  for united in states
    puts "What is the capital of #{united[:name]}? Press h for a hint."
    answer = gets.chomp.to_s.downcase
    if answer == 'h'
      puts "The first three letters are #{united[:capital][0..2]}.  Please enter your guess."
      answer = gets.chomp.to_s.downcase
      if answer == united[:capital].downcase
        puts "Correct!"
        united[:correct] += 1
        correct_answers += 1
        puts "You have gotten this capital correct #{united[:correct]} time(s) and have #{correct_answers} correct answers.  You're making America great again!"
      else
        puts "Incorrect!"
        united[:wrong] += 1
        wrong_answers += 1
        puts "You have gotten this capital wrong #{united[:wrong]} time(s) and have #{wrong_answers} wrong answers.  Learn the right answer and make yourself great again!"
      end
    else
      if answer == united[:capital].downcase
        puts "Correct!"
        united[:correct] += 1
        correct_answers += 1
        puts "You have gotten this capital correct #{united[:correct]} time(s) and have #{correct_answers} correct answers.  You're making America great again!"
      else
        puts "Incorrect!"
        united[:wrong] += 1
        wrong_answers += 1
        puts "You have gotten this capital wrong #{united[:wrong]} time(s) and have #{wrong_answers} wrong answers.  Learn the right answer and make yourself great again!"
      end
    end
  end
  puts "You got a total of #{correct_answers} correct answers and #{wrong_answers} wrong answers.  Would you like to play again? (y/n)"
  play_again = gets.chomp.to_s
  if play_again == 'y'
    puts "You're making America great again!"
    states.sort_by!{|united| united[:wrong]}
  else
    puts "YOU AIN'T NO MURICAN!"
    i += 1
  end
end
