class CommentsController < ApplicationController
  before_action :require_user

  def create
    # require 'pry'; binding.pry
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to :back, notice: 'Thanks for the comment!'
      # format.html { redirect_to :back, notice: 'Thanks for the comment!' }
      # format.json # { render action: 'show', status: :created, location: @mix }
    end
      # redirect_to :back
  end

private
  def comment_params
    params.require(:comment).permit(:comment, :user_id, :commentable_type, :commentable_id)
  end
end
