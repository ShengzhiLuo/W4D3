module Stepable
    HORIZONTAL_DIRS = [[0,1],[0,-1],[1,0],[-1,0]].freeze
    DIAGONAL_DIRS = [[1,1],[1,-1],[-1,1],[-1,-1]].freeze


    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        possible_moves = []
        move_dirs.each do |array|
            dx, dy = array
            possible_moves += grow_unblocked_moves_in_dir(dx, dy)
        end
        possible_moves
    end

    private

    def move_dirs
        #subclass implements this
        raise NotImplementedError
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        final_moves = []
        # get the piece's current pos
        cur_x, cur_y = self.pos
        new_x = cur_x + dx
        new_y = cur_y + dy
        if !(0..7).include?(new_x) && !(0..7).include?(new_y)
            if @board[new_x][new_y].nil?
                final_moves << [new_x,new_y]
            elsif @board[new_x,new_y].color != self.color
                    final_moves << [new_x,new_y]
            end
        end
        final_moves
    end
end