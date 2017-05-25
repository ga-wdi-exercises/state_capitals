require_relative "capitals"
states = data[:states]

states.shuffle! #permanently changes the states array every game

states.each do |state|
  state[:correct] = 0 #add correct key to each state hash
  state[:wrong] = 0 #add wrong key to each state hash
end

puts '~#~ ' * 10
puts "Welcome! Are you ready to ~TEST~ your ~KNOWLEDGE~ of STATE CAPITALS?!???!?!!?!? [yes/no]"
puts '~#~ ' * 10
input = gets.chomp
if input.downcase == "yes"
  puts ' '
  puts "GREAT LET'S GOOO!!!"
else
  puts ' '
  puts "TOO BAD!!!"
end

def play_game_with states
  states.each do |state|
    puts ' '
    puts "What is the capital of #{state[:name]}?"
    answer = " "
    # until answer.downcase == "#{state[:capital].downcase}"
      answer = gets.chomp
      if answer.downcase == "#{state[:capital].downcase}"
        state[:correct] += 1
        puts ' '
        puts "ugh...you're right..."
        total_guesses = state[:correct].to_i + state[:wrong].to_i
        puts "You've gotten that one right #{state[:correct].to_s} out of #{total_guesses.to_s} times."
      else
        state[:wrong] += 1
        puts ' '
        puts "hahaha WRONG"
        puts "You got that one wrong #{state[:wrong].to_s} time(s) already!! When will you learn?!?!"
      end
    # end
  end
end

play_game_with states


while true
  states.shuffle! #changes the array for every new game
  puts "That's all...want to play again? [Yes/No]"
  again = gets.chomp
  if again.downcase == "no"
    break
  elsif again.downcase == "yes"
    play_game_with states
  else
    break
  end
end
