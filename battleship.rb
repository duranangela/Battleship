require './lib/play'


def instructions
  "\nPlay by first entering squares to represent your ships on the board. Then take turns with computer to take shots at the other's ships. First to completely sink both ships wins!\n"
end

response = ""
while response != "q" && response != "quit" do
  puts "\n ***** Welcome to BATTLESHIP *****\n"
  puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  response = gets.chomp.downcase
  if response == "p" || response == "play"
      game = Play.new
      game.play_game
  elsif response == "i" || response == "instructions"
    puts instructions
  elsif response != "q" && response != "quit"
    puts "\nInvalid response, try again."
  else
    puts "\nThanks for playing!\n\n"
  end
end
