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


puts "*****************************"
puts "*        STATE QUIZ         *"
puts "*****************************"
puts " DO YOU LOVE AMERICA? IF SO, "
puts "GET AT LEAST A SCORE OF 50 OR"
puts " YOUR PATRIOTISM WILL BE PUT "
puts "        INTO QUESTION.       "
puts " "

def quiz_game(states)
  times_played = 1
  mixed_states = states.shuffle
  i_want_to_play = 1
  round_score = 0
  overall_score = 0

  until i_want_to_play == 0



    #========================
    mixed_states.each do |individual_state|
      puts "#{mixed_states.index(individual_state)+1}. What is the capital of #{individual_state[:name]}?"
      answer = gets.chomp
      if individual_state[:capital].downcase == answer.downcase
        individual_state[:times_correct] += 1
        puts "Correct! You have gotten this question correct #{individual_state[:times_correct]} out of #{times_played} times."
        round_score += 1
        overall_score +=1
      else
        puts "Incorrect...You have gotten this question correct #{individual_state[:times_correct]} out of #{times_played} times."
        puts "The correct answer was #{individual_state[:capital]}"
      end
    end
    #=========================
    puts ""
    puts "=============================================================================="
    puts ""
    if round_score < 40
      puts "ТОВАРИЩ, Ваш общий балл для этого раунда: #{round_score}/50."
    else
      puts "Your total score for this round is #{round_score} out of 50"
    end
    puts "Your overall score is #{overall_score} out of #{times_played*50}."
    puts "You have played this game #{times_played} time(s). Would you like to play again?"
    play_again = gets.chomp
    if ["no","definitely not","no thanks","bye","goodbye","n","ew"].include? play_again.downcase
      i_want_to_play = 0
    end
    round_score = 0
    times_played += 1
    mixed_states = states.shuffle.sort_by{|states_shuffle| states_shuffle[:times_correct]}
  end

end
states.each do |indiv_states|
  indiv_states[:times_correct]=0
end
quiz_game(states)
