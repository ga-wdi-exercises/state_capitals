require_relative "capitals"
states = data[:states]

#shuffle states
# provide welcome message
#initialize new keys that store # times user gets a capital correct and incorrect
#if correct, puts correct
#if INCORRECT puts incorrect

puts "\n\nWelcome to the United States- States Capital game\n\n"

states.shuffle!
continue = 'y'
guesses ={
  correct: 0,
  incorrect: 0,
  stateCorrect: 0,
  total: 0
}

index = 1
until continue == 'n'
  states.each do |state|
      puts "Do you know the capital of #{state[:name]}?"
      answer = gets.downcase.chomp
      guesses[:total] +=1
      if(answer == state[:capital].downcase)
        guesses[:correct]+=1
        guesses[:stateCorrect]+=1
        puts "\nCongrats! You got it correct \n\nCORRECT: #{guesses[:correct]} INCORRECT: #{guesses[:incorrect]}\n\nTimes guessed correct out of attempts #{guesses[:stateCorrect]}/#{guesses[:total]}"
      else
        guesses[:incorrect]+=1
        puts "\nSorry! You got it incorrect \n\nCorrect Guesses: #{guesses[:correct]} INCORRECT: #{guesses[:incorrect]}\n\nTimes guessed correct out of attempts #{guesses[:stateCorrect]}/#{guesses[:total]} "
    end
    guesses[:stateCorrect]=0
  end
  guesses[:correct]=0
  guesses[:incorrect]=0
  puts "Would you like to play agian? (y/n)"
  continue = gets.chomp
end
