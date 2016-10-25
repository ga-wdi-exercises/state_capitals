require "./capitals"
puts StateCapitals::STATES

states =  StateCapitals::STATES

def add_scoring (states)
  states.each { |state|
    state[:correct] = 0
    state[:incorrect] = 0
  }
end

def play_round (states)
  states.shuffle!
  states.each { |state|
    puts "What is the capital #{state[:name]}?"
    answer = gets.chomp
    if answer.capitalize == state[:capital]
      puts "Correct!"
      state[:correct] += 1
    else
      puts "Incorrect"
      state[:incorrect] += 1
    end
  }
end

add_scoring(states)
puts states

puts "Welcome to my struggle game about states and their capitals"

loop {
  play_round states
  puts "Again? ((y)es to play another round)"
  continue = gets.chomp
  if continue != 'y'  && continue != 'yes'
    break
  end
}
