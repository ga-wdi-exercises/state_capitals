require_relative "capitals"



# p states_mixed[0]


p "Welcome lets play a Capitals Game"

# curr_state = states_mixed[counter][:name]
# curr_cap = states_mixed[counter][:capital]
def game_set_up
  counter = 0
  correct = 0
  wrong = 0
  states = data[:states]

  states.each{|x| x.store(:correct, 0)}
  states.each{|x| x.store(:guesses, 0)}

  def start_round(states, counter, correct, wrong)
    states_mixed = states.shuffle

    states_mixed.each do |state|
      puts "what is the capital of #{state[:name]}"
      input = gets.chomp
      if  input == state[:name]
        puts "That is correct, the capital of #{state[:name]} is: #{state[:capital]}"
        p '---------------'
        state[:correct] += 1
        state[:guesses] += 1
        p "out of #{state[:guesses]} guesses you got  #{state[:correct]} correct"

        counter += 1
        correct += 1

      else
        puts "Sorry that is not the correct capital of #{state[:name]} actually it is: #{state[:capital]}"
        p '---------------'
        state[:guesses] += 1
        p "out of #{state[:guesses]} guesses you got  #{state[:correct]} correct"


        counter += 1
        wrong +=1
      end

      p '_______________'

    end
    p "This game you got #{correct} correct and #{wrong} incorrect"

    p "Would you like to play again? if yes press 'y' if no press 'n'"
    another = gets.chomp

    another == 'y' ? start_round(states, counter, correct, wrong) : return

  end
  start_round(states, counter, correct, wrong)

end

game_set_up


# def check_answer()

# end


# puts "What is the capital of #{pick_rand_state}"
