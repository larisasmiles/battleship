class Battleship

  def initialize(input, ouput)
    @messager  = Messager.new(input, ouput)
    @input      = input
    @output     = output
  end

  def start_game(input)
    @messager.welcome
    if input == ("p") || input == "play"
      play_game
    elsif input == ("i") || input == "instructions"
      @messager.game_overview
    else
      @messager.game_over
    end
  end

  def play_game
    @new_game = Board.new(@input, @output)
    
end
