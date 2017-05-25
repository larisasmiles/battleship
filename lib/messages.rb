module Messages

  def welcome_message
    p "Welcome to BATTLESHIP!!!"
    p "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def ai_message
    p "I have laid out my ship on the grid.\nYou now need to layout your ships.\nThe first is two units long and the\nsecond is three units long.\nThe grid has A1 at the top left and D4 at the bottom right."
    p "Enter the squares for the two-unit ship:"
  end

  def instructions
    p "Battlship is a game where you and your opponent take turns attacking each other's ships\n"\
      "by correctly guessing their placement on the grid.\n"\
      "The first person to correctly guess and destroy all their opponent's ships wins."\

    p "I will be your opponent. I will place my ships and you will be prompted to place your ships."
    p "Ships cannot wrap around the board."
    p "Ships cannot overlap."
    p "Ships can be laid either horizontally or vertically."
    p "Coordinates must correspond to the first and last units of the ship."
    p "PLEASE HIT RETURN TO CONTINUE"
    input = gets.chomp
    return if input.empty?
  end

  def end_game
    p "Thank-you for playing!"
    exit
  end
end
