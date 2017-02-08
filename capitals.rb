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
}]

states.each {|hash| hash[:guesses] = 0 }
states.each {|hash| hash[:correct] = 0 }

puts "Well hello there! \n\nLet's have some fun and do the thing!"
puts "Do you want to play?"
play = gets.chomp
play.capitalize!

while play == "Yes"

  states_randomized = states.shuffle

  states_randomized.each do |state|

    index = 0
    puts "\nWhat is the capital of #{state[:name]}?"
    state[:guesses] +=1
    answer = gets.chomp
    answer = answer.split.map(&:capitalize).join(' ')
    if answer == state[:capital]
      puts "Wow! I can't believe you got that right!"
      state[:correct] +=1
    else
      puts "Nope. You're a dumb-dumb."
      state[:correct] += 0
    end
    puts "You've gotten this question right #{state[:correct]} number of times out of #{state[:guesses]} number of guesses.\n"
    index += 1
  end

  # puts "\nWhat is the capital of #{states_randomized[index][:name]}?"
  # states_randomized[index][:guesses] +=1
  # answer = gets.chomp
  # answer = answer.split.map(&:capitalize).join(' ')
  # if answer == states_randomized[index][:capital]
  #   puts "Wow! I can't believe you got that right!"
  #   states_randomized[index][:correct] +=1
  # else
  #   puts "Nope. You're a dumb-dumb."
  #   states_randomized[index][:correct] += 0
  # end
  # puts "You've gotten this question right #{states_randomized[index][:correct]} number of times out of #{states_randomized[index][:guesses]} number of guesses.\n"
  # index += 1
  puts "\nWould you like to play again?"
  play = gets.chomp
  play.capitalize!
end
