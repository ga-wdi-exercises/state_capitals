require_relative 'capitals'

# We're going to create a game to help us memorize the names of
# the capitals of all 50 states.


states = States::STATE_CAPITALS

total_right = 0
total_possible = 0


# Initialize new keys in the Hashes that store the number of times
# a user gets a capital `correct` and the number of times the answer is
# `wrong`.
states.each { |state|
  state[:correct] = 0
  state[:wrong] = 0
}

# Make sure the states don't appear in alphabetical order in the prompts.
states.shuffle!

flag = "y"

while flag == "y"
  # Welcome Message
  puts "Welcome to the Capital Guessing Game! If you need a hint type 'h'. If you would like to quit type 'q'"
  puts

  # Through all 50 states, prompt the user to name the capital of the state.
  states.each { |state|
    puts "What is the capital of #{state[:name]}?"
    input = gets.chomp

    # Add a hint functionality that prints the first 3 letters of a capital
    if input == 'h'
      puts "It starts with: #{state[:capital][0,3]}"
      input = gets.chomp
    end

    #
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

  # If the user plays again, set the order of how the prompts appear to
  # start with the ones they got wrong the most often.
  states.sort_by! {|state| -state[:wrong] }

end
