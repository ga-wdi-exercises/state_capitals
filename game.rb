require_relative 'capitals'

# We're going to create a game to help us memorize the names of
# the capitals of all 50 states.
#
# To play the game:
#
#  - Your program should prompt the user to identify
#    the capital associated with a given state.
#  - There should be running tallies on the number of correct
#    and incorrect answers for each state
#  - After getting through all 50 states one time, users should be
#    asked whether or not they want to play again.

# Welcome Message
puts "Welcome to this Game!"

# Make sure the states don't appear in alphabetical order in the prompts.
states = States::STATE_CAPITALS.shuffle


# Initialize new keys in the Hashes that store the number of times
# a user gets a capital `correct` and the number of times the answer is
# `wrong`.
states.each { |state|
  state[:correct] = 0
  state[:wrong] = 0
}

# Through all 50 states, prompt the user to name the capital of the state.
states.each { |state|
  puts "what is the capital of #{state[:capital]}?"
  input = gets.chomp

  if input == 'q'
    break
  end

  # If the answer is correct/wrong, display a message saying so, and increment
  # the `correct/wrong` key.
  if input == state[:capital]
    puts "Correct! :)"
    state[:correct] += 1
    puts state[:correct]
  else
    puts "Wrong! :("
    state[:wrong] += 1
    puts state[:wrong]
  end

  # After each prompt, display a message telling the reader how many
  # times the state was answered correctly out of the total number of times
  # answered.
  puts "State answered correctly #{state[:correct]} out of #{state[:correct] + state[:wrong]} attempts"
}
