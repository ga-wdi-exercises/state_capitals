require_relative 'capitals'
states = data
flash_cards = states.shuffle
puts 'Welcome to the 50 States! They all have capitals, but we want you to tell us what they are! Let\'s get started!'
flash_cards.map {|card| card[:correct] = 0}
flash_cards.map{|card| card[:incorrect] = 0}
flash_cards.map{|card| card[:tries] = 0}

i=49
while i >= 0
    puts flash_cards[i][:name]
    answer = gets.chomp
    if answer = flash_cards[i][:capital]
        puts 'You are Correct!'
        flash_cards[i][:correct] += 1
        flash_cards[i][:tries] += 1
        i -= 1
        puts 'You have gotten this card correct ' + flash_cards[i][:correct].to_s + ' out of ' + flash_cards[i][:tries].to_s + ' times!'
    else
        puts 'Sorry not that one =( the capital is ' + flash_cards[i][:capital]
        flash_cards[i][:incorrect] += 1
        flash_cards[i][:tries] += 1
        i -= 1
        puts 'You have gotten this card incorrect ' + flash_cards[i][:incorrect].to_s + ' out of ' + flash_cards[i][:tries].to_s + ' times!'
    end
end
