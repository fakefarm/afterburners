class VotesController < ApplicationController
  before_action :require_user, only: [:create]
  def index
    @popular = Vote.all
  end

  def create
    if params[:type] == "Mix"
      record = Mix.find(params[:id])
    else
      if params[:type].nil?
        record = Comment.find(params[:voteable_id])
      else
        record = Comment.find(params[:id])
      end
    end
    vote = Vote.create(voteable: record, user_id: current_user.id, vote: true)
    if vote.valid?
      flash[:notice] = 'Thanks for the vote!'
    else
      flash[:error] = 'Sorry... only one per person. Gotta save some for the others.'
    end
      redirect_to :back
  end

private

  def vote_params
    params.requre(:vote).permit(:vote, :voteable, :voteable_id, :voteable_type, :comment_id)
  end
end
