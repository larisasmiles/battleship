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
    p "Row row row your boat gently down the stream, merrily merrily life is but a dream, press enter to continue"
    input = gets.chomp
    return if input.empty?
  end

  def end_game
    p "LOSER"
    exit
  end


end
