class CommentsController < ApplicationController
    def new
        @comment = current_user.comments.build
    end

    def create
        @comment = current_user.comments.build(comment_params)
        if @comment.save
            redirect_to root_path, notice: 'Saved in successfully'
        else
            flash.now[:error] = 'Failed to save'
            render :new
        end
    end


    private
    def comment_params
        params.require(:comment).permit(:content)
    end
    
end