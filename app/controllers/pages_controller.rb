class PagesController < ApplicationController
  def index
    @mixes = Mix.last(4).reverse
    @comments = Comment.all.last(3).reverse;
  end

  def about
  end
end
