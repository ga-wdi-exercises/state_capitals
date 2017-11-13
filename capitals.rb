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

states.each do |state|
  state[:number_correct] = 0
  state[:number_wrong] = 0
  state[:number_total_guesses] = 0
end

def play_game(states)
  total_correct = 0
  total_guesses = 0
  states.each { |state|
    puts "What is the capital of #{state[:name]}?"
    answer = gets.chomp
    if answer == "hint"
      puts "#{state[:capital][0..2]}"
      answer = gets.chomp
        if answer == state[:capital]
          state[:number_correct] += 1
          state[:number_total_guesses] += 1
          total_correct += 1
          total_guesses += 1
          puts "That is the correct answer! You have gotten this right #{state[:number_correct]} out of #{state[:number_total_guesses]} times. Overall score this round: #{total_correct}/#{total_guesses}."
        else
          state[:number_wrong] += 1
          state[:number_total_guesses] += 1
          total_correct += 1
          total_guesses += 1
          puts "That is wrong. You have gotten this right #{state[:number_correct]} out of #{state[:number_total_guesses]} times. Overall score this round: #{total_correct}/#{total_guesses}."
        end
    elsif answer == state[:capital]
      state[:number_correct] += 1
      state[:number_total_guesses] += 1
      total_correct += 1
      total_guesses += 1
      puts "That is the correct answer! You have gotten this right #{state[:number_correct]} out of #{state[:number_total_guesses]} times. Overall score this round: #{total_correct}/#{total_guesses}."
    else
      state[:number_wrong] += 1
      state[:number_total_guesses] += 1
      total_correct += 1
      total_guesses += 1
      puts "That is wrong. You have gotten this right #{state[:number_correct]} out of #{state[:number_total_guesses]} times. Overall score this round: #{total_correct}/#{total_guesses}."
    end
  }
    puts "If you would like to play again, type 'play' below."
    answer = gets.chomp
    if answer == 'play'
      states_sorted = []
      states_sorted = states.sort_by {|state| state[:number_correct]}
      play_game(states_sorted)
    end
end

puts "Welcome to 'Learn State Capitals'! Type play below to begin."
answer = gets.chomp
if answer = 'play'
  play_game(states)
end
