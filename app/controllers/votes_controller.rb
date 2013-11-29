class VotesController < ApplicationController
  before_action :require_user, only: [:create]
  def index
    # What's the query for Mixes.where votes > 0?
    @popular = Mix.all
  end

  def create
    # _refactor - attempt at polymorphic comments - but I don't want voted comments
    if params[:type] == "Mix"
      record = Mix.find(params[:id])
    else
      if params[:type].nil?
        record = Comment.find(params[:voteable_id])
      else
        record = Comment.find(params[:id])
      end
    end
    @vote = Vote.create(voteable: record, user_id: current_user.id, vote: true)
    if @vote.valid?
      if @vote.save
        respond_to do |format|
          format.html { redirect_to :back, notice: 'Thanks for the vote!' }
          format.js { render :layout => false }
        end
      end
    else
      respond_to do |format|
        format.js { render :layout => false }
      end
    end
  end

private

  def vote_params
    params.requre(:vote).permit(:vote, :voteable, :voteable_id, :voteable_type, :comment_id)
  end
end
