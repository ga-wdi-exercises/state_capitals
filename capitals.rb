# an array of state hashes
states =[
{
    name: "Alabama",
    capital: "Montgomery"
   },
# {
#     name: "Alaska",
#     capital: "Juneau"
# }, {
#     name: "Arizona",
#     capital: "Phoenix"
# }, {
#     name: "Arkansas",
#     capital: "Little Rock"
# }, {
#     name: "California",
#     capital: "Sacramento"
# }, {
#     name: "Colorado",
#     capital: "Denver"
# }, {
#     name: "Connecticut",
#     capital: "Hartford"
# }, {
#     name: "Delaware",
#     capital: "Dover"
# }, {
#     name: "Florida",
#     capital: "Tallahassee"
# }, {
#     name: "Georgia",
#     capital: "Atlanta"
# }, {
#     name: "Hawaii",
#     capital: "Honolulu"
# }, {
#     name: "Idaho",
#     capital: "Boise"
# }, {
#     name: "Illinois",
#     capital: "Springfield"
# }, {
#     name: "Indiana",
#     capital: "Indianapolis"
# }, {
#     name: "Iowa",
#     capital: "Des Moines"
# }, {
#     name: "Kansas",
#     capital: "Topeka"
# }, {
#     name: "Kentucky",
#     capital: "Frankfort"
# }, {
#     name: "Louisiana",
#     capital: "Baton Rouge"
# }, {
#     name: "Maine",
#     capital: "Augusta"
# }, {
#     name: "Maryland",
#     capital: "Annapolis"
# }, {
#     name: "Massachusetts",
#     capital: "Boston"
# }, {
#     name: "Michigan",
#     capital: "Lansing"
# }, {
#     name: "Minnesota",
#     capital: "St. Paul"
# }, {
#     name: "Mississippi",
#     capital: "Jackson"
# }, {
#     name: "Missouri",
#     capital: "Jefferson City"
# }, {
#     name: "Montana",
#     capital: "Helena"
# }, {
#     name: "Nebraska",
#     capital: "Lincoln"
# }, {
#     name: "Nevada",
#     capital: "Carson City"
# }, {
#     name: "New Hampshire",
#     capital: "Concord"
# }, {
#     name: "New Jersey",
#     capital: "Trenton"
# }, {
#     name: "New Mexico",
#     capital: "Santa Fe"
# }, {
#     name: "New York",
#     capital: "Albany"
# }, {
#     name: "North Carolina",
#     capital: "Raleigh"
# }, {
#     name: "North Dakota",
#     capital: "Bismarck"
# }, {
#     name: "Ohio",
#     capital: "Columbus"
# }, {
#     name: "Oklahoma",
#     capital: "Oklahoma City"
# }, {
#     name: "Oregon",
#     capital: "Salem"
# }, {
#     name: "Pennsylvania",
#     capital: "Harrisburg"
# }, {
#     name: "Rhode Island",
#     capital: "Providence"
# }, {
#     name: "South Carolina",
#     capital: "Columbia"
# }, {
#     name: "South Dakota",
#     capital: "Pierre"
# }, {
#     name: "Tennessee",
#     capital: "Nashville"
# }, {
#     name: "Texas",
#     capital: "Austin"
# }, {
#     name: "Utah",
#     capital: "Salt Lake City"
# }, {
#     name: "Vermont",
#     capital: "Montpelier"
# }, {
#     name: "Virginia",
#     capital: "Richmond"
# }, {
#     name: "Washington",
#     capital: "Olympia"
# }, {
#     name: "West Virginia",
#     capital: "Charleston"
# },
   {
     name: "Wisconsin",
      capital: "Madison"
   },
{
    name: "Wyoming",
    capital: "Cheyenne"
}]

# gets the first argument
user_name = ARGV[0]
prompt = '> '

puts "
    ###############################################

    Do you know your states?

    ##############################################

    "

puts "Welcome, Please enter your name."

puts prompt
 user_name = $stdin.gets.chomp

puts "Hi #{user_name}."

  states.shuffle!
  $correct = 0
  $wrong = 0
  $total = 0
  $questions = 0
  
  states.sort_by{|state| state[:correct]}.each do |state|


#states.each do |state|
    puts "what is the capital of" + " " + state[:name]
    puts prompt

     @answer = $stdin.gets.chomp

       if @answer == state[:capital]
         puts "correct"
         $correct += 1
         $questions += 1


      else
        puts "not quite,try again!"
        $wrong +=1
        $questions += 1
       end
end

puts @correct

print "You answered #{$correct} questions correctly and #{$wrong} questions wrong out of #{$questions} questions"
