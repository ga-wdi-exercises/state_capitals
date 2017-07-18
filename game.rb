require_relative 'capitals'

# We're going to create a game to help us memorize the names of
# the capitals of all 50 states.


#states = States::STATE_CAPITALS
states = [
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
  }
]

total_right = 0
total_possible = 0


# Initialize new keys in the Hashes that store the number of times
# a user gets a capital `correct` and the number of times the answer is
# `wrong`.
states.each { |state|
  state[:correct] = 0
  state[:wrong] = 0
}


flag = "y"

while flag == "y"
  # Welcome Message
  puts "Welcome to the Capital Guessing Game!"
  puts

  # Make sure the states don't appear in alphabetical order in the prompts.
  states.shuffle!

  # Through all 50 states, prompt the user to name the capital of the state.
  states.each { |state|
    puts "What is the capital of #{state[:capital]}?"
    input = gets.chomp

    if input == 'q'
      break
    end

    # If the answer is correct/wrong, display a message saying so, and increment
    # the `correct/wrong` key.
    if input == state[:capital]
      print "CORRECT! :) Scores for "
      state[:correct] += 1
      total_right += 1
    else
      print "WRONG! :( Scores for "
      state[:wrong] += 1
    end

    total_possible += 1

    # After each prompt, display a message telling the reader how many
    # times the state was answered correctly out of the total number of times
    # answered.
    puts "this State: #{state[:correct]}/#{state[:correct] + state[:wrong]} Overall Score: #{total_right}/#{total_possible}"
    puts
  }

  # Once the user has gone through all 50 states,
  # ask them if they'd like to play again.
  puts "Your total score is #{total_right}/#{total_possible}. Would you like to play again? [y=Yes]"
  flag = gets.chomp

  possible_score *= 2
end
