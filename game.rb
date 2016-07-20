require_relative "capitals"
states = data[:states]

#shuffle the states array
states = states.shuffle

#puts welcome message and tell user to type 'play'
puts "Time to study state capitals. Type 'play' when you are ready to begin:"
#verify the user has typed 'play' with gets.chomp
answer = gets.chomp
if answer == 'play'
  #give each index a new key of incorrect and new key of correct, both with value of 0
  states.map do |state|
    state[:correct] = 0
    state[:incorrect] = 0
  end
end

while true
  states.map do |state|
    #puts content for question by pulling in "content" + array[:name]
    puts "What is the capital of " + state[:name] + "?"
    #gets.chomp the user input and compare it to array[:capital]
    guess = gets.chomp
    #if the input == capital, increment correct key val +1
    #also, puts 'correct.'
    if guess == state[:capital]
      state[:correct] += 1
      puts "Yep that's right."
      #else the input != capital, increment incorrect key val +1
      #also, puts 'nope.'
    else
      state[:incorrect] += 1
      puts "NO!"
      #end that if/else
    end
    #puts 'you are numc correct for numi + numc times answered'
    total = state[:correct] + state[:incorrect]
    puts "You've gotten #{state[:correct]} correct out of #{total} times answered."
  end
  #if all states are done, puts 'play again? Y/N'
  #gets.chomp the input and if Y...
  #sort states array by higher val of the incorrect key...
  #and REPEAT
  puts "Play again? 'Y' or 'N'?"
  play_again = gets.chomp
  if play_again == 'Y'
    states = states.sort_by { |i| i[:incorrect] }.reverse
  end
  # puts states to see if sorting worked, then comment it out
  # puts states
  break if play_again == 'N'
end
