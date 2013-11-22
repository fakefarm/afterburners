class VotesController < ApplicationController

  def index
    @popular = Vote.all
  end

  def create
    mix = Mix.find(params[:id])
    vote = Vote.create(voteable: mix, user_id: current_user.id, vote: true)
    if vote.valid?
      flash[:notice] = 'Thanks for the vote!'
    else
      flash[:error] = 'Bummer, didn\'t save..'
    end
      redirect_to :back
  end
end
