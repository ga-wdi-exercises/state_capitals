require_relative "capitals"
states = data[:states]

#shuffle states
# provide welcome message
#initialize new keys that store # times user gets a capital correct and incorrect
#if correct, puts correct
#if INCORRECT puts incorrect

puts "\n\nWelcome to the United States- States Capital game\n\n"
states.shuffle

correct =0
incorrect =0
total =0

totalStates = states.length

index = 1
states.each do |state|
    puts "Do you know the capital of #{state[:name]}?"
    answer = gets.downcase.chomp
    total +=1
    if(answer == state[:capital].downcase)
      correct +=1
      puts "\nCongrats! You got it correct \n\nCORRECT: #{correct} INCORRECT: #{incorrect} TOTAL: #{total}/#{totalStates}\n"
    else
      incorrect +=1
      puts "\nSorry! You got it incorrect \n\nCorrect Guesses: #{correct} INCORRECT: #{incorrect} out of #{total}/#{totalStates}\n"
  end
end
