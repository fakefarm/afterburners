class PagesController < ApplicationController
  def index
    @mixes = Mix.all
  end
end
