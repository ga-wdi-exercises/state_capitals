# an array of state hashes
def get_states
  [
    {
        name: "Alabama",
        capital: "Montgomery"
    }, {
        name: "Alaska",
        capital: "Juneau"
    }, {
        name: "Arizona",
        capital: "Phoenix"
    }
    # , {
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
    # }
  ]
end

def start_game
  states = get_states
  puts "How well do you know your state capitals?\nWhen a state appears, type in the name of its capital."
  states.shuffle.each do |state|
    state[:correct_guess] = 0
    state[:incorrect_guess] = 0
    puts state[:name]
    user_input = gets.chomp.downcase
    if user_input == state[:capital].downcase
      puts "#{state[:capital]} is Correct!"
      state![:correct_guess] += 1
      total_guesses = state[:correct_guess] + state[:incorrect_guess]
      puts "You have answered this question correctly #{state[:correct_guess]} out of #{total_guesses} times."
      next
    else
      puts "Better luck next time."
      state![:incorrect_guess] += 1
      next
    end
  end
  play_again
end

def play_again
  puts "Would you like to play again? [yes/no]"
  while play_again_input = gets.chomp.downcase do
    case play_again_input
    when "yes"
      puts "Great, now you can improve your score!"
      start_game
      break
    when "no"
      puts "Maybe start with simply naming the states next time."
      break
    else
      puts "It's a yes or no question."
      play_again
    end
  end
end

start_game
