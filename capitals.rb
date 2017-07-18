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

# a truncated array of state hashes
states_test =[
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

score = 0
play = "Y"

states.each do |state|
  state[:correct] = 0
  state[:wrong] = 0
end

puts "Hey, nerd! Bet you know all the state capitals, like a neerrrd! (Don't forget to capitalize!)"

states = states.shuffle

while play == "Y"
  states.each do |state|
    puts "What is the capital of #{state[:name]}? Type 'Hint' if you're stuck."
    answer = gets.chomp
    if answer == state[:capital]
      state[:correct] += 1
      score += 1
      puts "You're right, dweeb! This has been guessed correctly #{state[:correct]} times and incorrectly #{state[:wrong]} times. You have made #{score} correct guesses total."
    elsif answer.upcase == "HINT"
      puts "The first three letters are '#{state[:capital].slice(0, 3)}'. Now type your answer, dork!"
      answer = gets.chomp
      if answer == state[:capital]
        state[:correct] += 1
        score += 1
        puts "You're right, dweeb! This has been guessed correctly #{state[:correct]} times and incorrectly #{state[:wrong]} times. You have made #{score} correct guesses total."
      else
        state[:wrong] += 1
        puts "You're not even good at nerd stuff! The answer is #{state[:capital]}. This has been guessed correctly #{state[:correct]} times and incorrectly #{state[:wrong]} times. You have made #{score} correct guesses total."
      end
    else
      state[:wrong] += 1
      puts "You're not even good at nerd stuff! The answer is #{state[:capital]}. This has been guessed correctly #{state[:correct]} times and incorrectly #{state[:wrong]} times. You have made #{score} correct guesses total."
    end
  end

  puts "Wanna play again, neerrrd (Y/N)?"
  play = gets.chomp.upcase
  states = states.sort_by { |state| state[:correct]}
end
