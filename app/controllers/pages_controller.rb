class PagesController < ApplicationController
  def index
    @mixes = Mix.last(4)
  end
end
