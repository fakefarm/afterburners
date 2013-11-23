class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      flash[:notice] = "Thanks for the comment!"
    end
      redirect_to :back
  end

private
  def comment_params
    params.require(:comment).permit(:comment, :user_id, :commentable_type, :commentable_id)
  end
end
