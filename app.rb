require_relative "capitals"
states = data[:states]

puts "Yo, Yo, Yo! Welcome to the State Capitals Quiz!"
puts "To play: type GO"

answer = gets.chomp



states = states.shuffle!
 def get_user_input prompt
   puts prompt
   gets.chomp
 end


if answer == "GO"
  states.map do |state|
    state[:correct] = 0
    state[:incorrect] = 0
  end
end


  while true
     states.map do |state|

    input = get_user_input("what is the capital of " + state[:name] + "?")

    if input == state[:capital]
    state[:correct] += 1
      puts "Correct!"
    else
      state[:incorrect] += 1
      puts "NO! What an idiot!"
    end
    total = state[:correct] + state[:incorrect]
    puts "You've gotten #{state[:correct]} correct out of #{total} times answered."
  end

  puts "Play again? 'Y' or 'N'?"
play_again = gets.chomp
if play_again == 'Y'
 states = states.sort_by { |i| i[:incorrect] }.reverse
end
# puts states to see if sorting worked, then comment it out
# puts states
break if play_again == 'N'
end

#
