require_relative 'piece'

class Pawn < Piece
    def symbol

    end
    def moves
        if self.at_start_row?
            
        else
            only 1(straight/diagonal)
        end
    end
    def at_start_row?
        if self.color == "white" && self.pos[0] == 6 || self.color == "black" && self.pos[0] == 1
            return true
        else
            return false
        end
    end
    def forward_dir
        if self.color == ""
    end
    def forward_steps
    end
    def side_attack
    end
end