def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  new = rand(1..11)
  return new
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
card1= deal_card
 card2=deal_card
 csum=card1+card2
 display_card_total(csum)
csum
end


def hit? (card_total)
    prompt_user
  x=get_user_input
  if x == "s"
    card_total
    elsif x == "h"
    new_card = deal_card
    card_total += new_card
  else
      invalid_command
    hit?
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"

end

def runner
     welcome
     card_total= initial_round
   while card_total <=21 do
     card_total = hit?(card_total)
     display_card_total(card_total)
   end
end_game(card_total)
end

