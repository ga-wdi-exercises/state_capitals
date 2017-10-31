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
}
]

run_game = ""
first_run = true

game = {
  total_correct: 0,
  total_incorrect: 0
}

start_game = Proc.new do |game, states|
  states.length.times do |index|
    cur_state = states[index]
    if !cur_state[:correct] && !cur_state[:incorrect]
      cur_state[:correct] = 0
      cur_state[:incorrect] = 0
    end
    puts "#{index +1}: What's the capital of #{cur_state[:name]}?"
    input = gets.chomp
    if input.upcase == cur_state[:capital].upcase
      cur_state[:correct] += 1
      game[:total_correct] += 1
    else
      cur_state[:incorrect] += 1
      game[:total_incorrect] += 1
    end
    puts "You guessed #{cur_state[:name]}'s capital correctly #{cur_state[:correct]}/#{cur_state[:incorrect] + cur_state[:correct]}\n\n"
  end
end

reset_game = Proc.new do
  { total_correct: 0, total_incorrect: 0 }
end

game_loop = Proc.new do
  puts "Your total score is #{game[:total_correct]}"
  puts "Do you want to play again? yes/no\n\n"
end

def init_game(run_game, first_run, reset_game, start_game, game_loop, game, states)
  until run_game == "no" || run_game == "n" do
    if first_run
      first_run = false
      start_game.call(game, states.shuffle)
      game_loop.call()
      game = reset_game.call()
      run_game = gets.chomp.downcase
    else
      start_game.call(game, states.sort!{ |x,y| y[:incorrect] <=> x[:incorrect] })
      game_loop.call()
      game = reset_game.call()
      run_game = gets.chomp.downcase
    end
  end
end

puts "Welcome to the state capital game!"
puts "Try and see how many state capitals you can guess correctly \n\n"
init_game(run_game, first_run, reset_game, start_game, game_loop, game, states)
