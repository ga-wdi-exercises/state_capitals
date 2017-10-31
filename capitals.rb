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
}].shuffle!

#adds number of correct answers, wrong answers, and total guesses to each states' hash
states.each { |state| state[:num_correct] = 0 }
states.each { |state| state[:num_wrong] = 0 }
states.each { |state| state[:num_total_guesses] = 0 }

def play_game(states)
  states.each do |state|
    puts "Enter the Capital of #{state[:name]}"
    answer = gets.chomp.to_s
    if answer == state[:capital]
      state[:num_correct] += 1
      state[:num_total_guesses] += 1
      puts "You are correct! You have guessed this capital correctly #{state[:num_correct]} out of #{state[:num_total_guesses]} guesses"
    else
      state[:num_wrong] += 1
      state[:num_total_guesses] += 1
      puts "You are wrong. You have guess this capital correctly #{state[:num_correct]} out of #{state[:num_total_guesses]} guesses"
    end
  end
  puts "Do you want to play again? yes or no"
  answer = gets.chomp
  if answer == "yes"
    #if user wants to play again, they will now be playing from the sorted_states array
    sorted_states = []
    sorted_states = states.sort_by{ |state| state[:num_correct]}
    play_game(sorted_states)
  end
end

puts "Welcome to the State Capitals game! Type play to begin."
answer = gets.chomp
if answer == "play"
  play_game(states)
end
