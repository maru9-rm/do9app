class BoardsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @boards = Board.all
    end

    def show
        @board = Board.find(params[:id])
        @tasks = Task.all 
    end


    def edit
        @board = current_user.boards.find(params[:id])
    end

    def update
        @board = current_user.boards.find(params[:id])
        if @board.update(board_params)
            redirect_to root_path
        else
            render :edit
        end
    end


    def new
        @board = current_user.boards.build
    end


    def create
        @board = current_user.boards.build(board_params)
        if @board.save
            redirect_to board_path(@board), notice: 'Saved in successfully'
        else
            flash.now[:error] = 'Failed to save'
            render :new
        end
    end

    def destroy
        board = current_user.boards.find(params[:id])
        board.destroy
        redirect_to root_path
    end

    private
    def board_params
        params.require(:board).permit(:title, :content)
    end
end