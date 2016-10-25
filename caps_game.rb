require "./capitals"
puts StateCapitals::STATES

states =  StateCapitals::STATES

def add_scoring (states)
  states.each { |state|
    state[:correct] = 0
    state[:incorrect] = 0
  }
end

def get_scores(states)
  correct_list = states.collect {|state| state[:correct]}
  incorrect_list = states.collect {|state| state[:incorrect]}
  correct = correct_list.reduce(:+)
  incorrect = incorrect_list.reduce(:+)
  return correct, incorrect
end

def play_round (states)
  correct, incorrect = get_scores(states)
  states.shuffle.each { |state|
    puts "What is the capital #{state[:name]}?"
    puts "Correct: #{correct}  Incorrect: #{incorrect}"
    answer = gets.chomp
    if answer.capitalize == state[:capital]
      puts "Correct!"
      state[:correct] += 1
      correct += 1
    else
      puts "Incorrect"
      state[:incorrect] += 1
      incorrect +=1
    end
  }
end

add_scoring(states)

puts "Welcome to my struggle game about states and their capitals"

loop {
  play_round states
  puts "Again? ((y)es to play another round)"
  continue = gets.chomp
  break if continue != 'y'  && continue != 'yes'
}
