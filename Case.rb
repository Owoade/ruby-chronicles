def getPieceMove( character )
  case character.downcase()

    when "pawn"
      return ["A step forward", "Two steps forward on first move"]

    when "bishop"
      return "Diagonally all the eay through till there is a blocking piece or end of board"

    when "knight"
      return "Moves in an L-shaped pattern"

    when "rook"
      return ["horizontally", "vertically"]

    when "queen"
      queen_moves = {
        :single_step => "Moves a single step in all direction",
        :diagonally => "Just like the bishop",
        :linearly => "Just like the rook"
      }
      return queen_moves

    when "king"
      return "Moves a single step in all direction"

    else
      return "Invalid Character"
  end

end

puts getPieceMove("PAWN")
