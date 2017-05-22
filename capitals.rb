# an array of state hashes
states =[
{
    name: "Alabama",
    capital: "Montgomery"
},
 {
    name: "Alaska",
    capital: "Juneau"
}, {
    name: "Arizona",
    capital: "Phoenix"
}, {
    name: "Arkansas",
    capital: "Little Rock"
}, {
    name: "California",
    capital: "Sacramento"
}, {
    name: "Colorado",
    capital: "Denver"
}, {
    name: "Connecticut",
    capital: "Hartford"
}, {
    name: "Delaware",
    capital: "Dover"
}, {
    name: "Florida",
    capital: "Tallahassee"
}, {
    name: "Georgia",
    capital: "Atlanta"
}, {
    name: "Hawaii",
    capital: "Honolulu"
}, {
    name: "Idaho",
    capital: "Boise"
}, {
    name: "Illinois",
    capital: "Springfield"
}, {
    name: "Indiana",
    capital: "Indianapolis"
}, {
    name: "Iowa",
    capital: "Des Moines"
}, {
    name: "Kansas",
    capital: "Topeka"
}, {
    name: "Kentucky",
    capital: "Frankfort"
}, {
    name: "Louisiana",
    capital: "Baton Rouge"
}, {
    name: "Maine",
    capital: "Augusta"
}, {
    name: "Maryland",
    capital: "Annapolis"
}, {
    name: "Massachusetts",
    capital: "Boston"
}, {
    name: "Michigan",
    capital: "Lansing"
}, {
    name: "Minnesota",
    capital: "St. Paul"
}, {
    name: "Mississippi",
    capital: "Jackson"
}, {
    name: "Missouri",
    capital: "Jefferson City"
}, {
    name: "Montana",
    capital: "Helena"
}, {
    name: "Nebraska",
    capital: "Lincoln"
}, {
    name: "Nevada",
    capital: "Carson City"
}, {
    name: "New Hampshire",
    capital: "Concord"
}, {
    name: "New Jersey",
    capital: "Trenton"
}, {
    name: "New Mexico",
    capital: "Santa Fe"
}, {
    name: "New York",
    capital: "Albany"
}, {
    name: "North Carolina",
    capital: "Raleigh"
}, {
    name: "North Dakota",
    capital: "Bismarck"
}, {
    name: "Ohio",
    capital: "Columbus"
}, {
    name: "Oklahoma",
    capital: "Oklahoma City"
}, {
    name: "Oregon",
    capital: "Salem"
}, {
    name: "Pennsylvania",
    capital: "Harrisburg"
}, {
    name: "Rhode Island",
    capital: "Providence"
}, {
    name: "South Carolina",
    capital: "Columbia"
}, {
    name: "South Dakota",
    capital: "Pierre"
}, {
    name: "Tennessee",
    capital: "Nashville"
}, {
    name: "Texas",
    capital: "Austin"
}, {
    name: "Utah",
    capital: "Salt Lake City"
}, {
    name: "Vermont",
    capital: "Montpelier"
}, {
    name: "Virginia",
    capital: "Richmond"
}, {
    name: "Washington",
    capital: "Olympia"
}, 

 {
    name: "West Virginia",
    capital: "Charleston"
}, {
    name: "Wisconsin",
    capital: "Madison"
}, {
    name: "Wyoming",
    capital: "Cheyenne"
}]

states2 = states.each do |place|
    place[:wrong] = 0
    place[:correct] = 0
end

testArray = states2.shuffle!

def start (input)
    if input == "y"
        puts "Lets Start!!!!!!!!!!!!"
    else
        puts "Too bad... you could've done real well"
    end
end


def theGame(array)
    right = 0
    wrong = 0
    array.each do |place|
        puts place[:name]
        ans = gets.chomp.capitalize!

        if ans == place[:capital]
            place[:correct] = place[:correct]+ 1
            right = right +1
            puts "Thats Right!! #{place[:correct]} times right, #{place[:wrong]} times wrong"
            puts "total score = #{right}"
        else
            place[:wrong] = place[:wrong] + 1
            wrong = wrong + 1
            puts "Try again next time"
            puts "#{place[:correct]} times right, #{place[:wrong]} times wrong"
            puts "total score = #{right}"
            next
        end
    end
    puts "total correct = #{right} out of 50"
end

def tryAgain(yn,arr)
    if yn == "y"
        testy = arr.sort_by { |hashs| hashs[:wrong] }
        testy.reverse!
        theGame(testy)
        puts "Do you want to go again??  y or n"
        attempt = gets.chomp!
        tryAgain(attempt, testy)
    else
        puts "sorry to see you go"
    end
end


puts "Hi welcome to the Test of States..."
puts "State Capitals that is"
puts "Ready for question 1?"
puts "y or y ???"
yn = gets.chomp!

start(yn)

theGame(testArray)
# puts testArray

puts "would you like to try agin???"
puts "y or n ??"
try = gets.chomp!

tryAgain(try,testArray)



















