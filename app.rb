require_relative "capitals"
states = data[:states]

states_mixed = states.shuffle

counter = 0
correct = 0
wrong = 0

# curr_state = states_mixed[counter][:name]
# curr_cap = states_mixed[counter][:capital]

states.each do |state|
puts "what is the capital of #{state[:name]}"
input = gets.chomp
if  input == state[:name]
	puts "That is correct, the capital of #{state[:name]} is: #{state[:capital]}"
	counter += 1
	correct += 1
else
	puts "Sorry that is not the correct capital of #{curr_state} actually it is: #{curr_cap}"
	counter += 1
	wrong +=1
end

end

# def check_answer()

# end


# puts "What is the capital of #{pick_rand_state}"

