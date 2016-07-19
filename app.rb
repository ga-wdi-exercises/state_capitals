require_relative "capitals"
states = data[:states]

puts "Yo, Yo, Yo! Welcome to the State Capitals Quiz!"
puts "To play: type GO"

answer = gets.chomp



states = states.shuffle!



if answer == "GO"
  states.map do |state|
    state[:correct] = 0
    state[:incorrect] = 0
  end
end


  while true
     states.map do |state|
      #  num_correct = state[:correct].to_i
      #  num_tried = state[:correct].to_i
    puts "what is the capital of " + state[:name] + "?"
    guess = gets.chomp
    if guess == state[:capital]
    state[:correct] += 1
      puts "Correct!"
    else
      state[:incorrect] += 1
      puts "NO! What an idiot!"
    end
    total = state[:correct] + state[:incorrect]
    puts "You've gotten #{state[:correct]} correct out of #{total} times answered."
  end

    puts "Play again? 'YES' or 'NO'?"
    play_again = gets.chomp
    break if play_again != "YES"
  end

#
