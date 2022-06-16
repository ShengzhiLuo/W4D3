class Piece
    def initialize(color = nil, board = nil, pos = nil)
        @color = color
        @board = board
        @pos = pos
    end



    def valid_moves
    end

    def pos=(val)
    end


    private
    def move_into_check?(end_pos)
    end
end