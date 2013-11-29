class PagesController < ApplicationController
  def index
    @mixes = Mix.last(8).reverse
    @comments = Comment.all.last(3).reverse;
  end

  def about
  end
end
