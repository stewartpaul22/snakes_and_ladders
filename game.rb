
class Game

  attr_accessor :players, :dice, :modArray, :board, :inplay

  def initialize(players, dice, modArray, board)
    @players = players
    @dice = dice
    @modArray = modArray
    @board = board
    @inplay = true
  end

  def check_modifier(position)
    for mod in @modArray
      if mod.start_pos == position
        return mod.end_pos
      end
    end
    return position
  end

  def check_win()
    if @players[0].position > 99
      @inplay = false
      return true
    end
  end

  def rotate_players()
    @players.rotate!()
  end

end
