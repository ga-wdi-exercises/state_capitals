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

states.each {|hash| hash[:guesses] = 0 }
states.each {|hash| hash[:correct] = 0 }

puts "\nWell hello there! \n\nLet's have some fun and do the thing!"
puts "Do you want to play?"
play = gets.chomp
play.capitalize!
ever_said_yes = false

while play == "Yes"

  states_randomized = states.shuffle
  correct = 0
  index = 0
  ever_said_yes = true

  states_randomized.each do |state|

    puts "\n"
    puts "*****"*5
    puts "\nWhat is the capital of #{state[:name]}?"
    state[:guesses] +=1
    answer = gets.chomp
    answer = answer.split.map(&:capitalize).join(' ')
    if answer == state[:capital]
      puts "\n            X"
      puts "           X"
      puts "  X       X"
      puts "   X     X"
      puts "    X   X"
      puts "     X X"
      puts "      X"
      state[:correct] +=1
      correct +=1
      puts "\nYippee."
    elsif answer == "Exit" || answer == "Quit"
      puts "\n  X     XXXXX XXXXX XXXXX XXXXX   XX"
      puts "  X     X   X X     X     X   X   XX"
      puts "  X     X   X  XXX  XXXX  XXXX    XX"
      puts "  X     X   X     X X     X   X"
      puts "  XXXXX XXXXX XXXXX XXXXX X    X  XX"
      break
    else
      puts "\n  X       X"
      puts "   X     X"
      puts "    X   X"
      puts "      X"
      puts "    X   X"
      puts "   X     X"
      puts "  X       X"
      state[:correct] += 0
      puts "\nActually, it's #{state[:capital]}."
    end
    index += 1
    puts "You've gotten this question right #{state[:correct]} time(s) out of #{state[:guesses]} guess(es).\n"
    puts "So far this round, you've answered #{correct} out of #{index} question(s) correctly."
  end

  puts "\n"
  puts "*****"*5
  puts "*****"*5
  puts "\nThis round, you answered #{correct} out of #{index} question(s) correctly."
  puts "\nWould you like to play again?"
  play = gets.chomp
  play.capitalize!
end
