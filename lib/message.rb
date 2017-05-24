
class Message

  def welcome
    p "Welcome to BATTLESHIP!!!"
    p "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def computer_initiate_game
    p "I have laid out my ship on the grid.\nYou now need to layout your ships.\nThe first is two units long and the\nsecond is three units long.\nThe grid has A1 at the top left and D4 at the bottom right."
    p "Enter the squares for the two-unit ship:"
  end
end
