def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  r = rand(1..11)
  r
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts  "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  val1 =deal_card
  val2 = deal_card
  sum = val1 + val2
  display_card_total(sum)
  sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
    t = deal_card
    card_total += t
  elsif input == 's'
    #prompt_user
  else
    invalid_command
   # prompt_user
  end
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  
  while total < 21
   total = hit?(total)
   display_card_total(total)
  end 
  if total >= 21
  end_game(total)
  end
end
    
