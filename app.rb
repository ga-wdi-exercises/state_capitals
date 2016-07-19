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


  i=0

  num_correct = states[i][:correct].to_i
  num_tried = states[i][:correct].to_i 

   while i < states.length
    puts "what is the capital of " + states[i][:name].to_s+ "?"
    guess = gets.chomp
    if guess == states[i][:capital]
    num_correct = (states[i][:correct]).to_i + 1
      puts "Correct! You have answered this question " + num_correct.to_s + " out of " + (num_correct + num_tried).to_s + " times!"
    else
      num_tried = (states[i][:correct]).to_i + 1
      num_correct = (states[i][:correct]).to_i + 0
      puts "What an idiot! You have answered this question " + num_correct.to_s + " out of " + (num_correct + num_tried).to_s + " times!"
    end
    i += 1
    # then do...
  end

#
