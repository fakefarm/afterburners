class MixesController < ApplicationController
  before_action :find_mix, only: [:show, :edit, :update, :destroy, :foo]
  before_action :require_user, except: [:index, :show]

  def index
    @mixes = Mix.all
  end

  def show
    @comments = Comment.where(commentable: @mix).reverse
    @comment = Comment.new
  end

  def new
    @mix = Mix.new
    @categories = Category.all
  end

  def edit
  end

  def create
    @mix = Mix.new(mix_params)

    respond_to do |format|
      if @mix.save
        format.html { redirect_to @mix, notice: 'Mix was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mix }
      else
        format.html { render action: 'new' }
        format.json { render json: @mix.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @mix.update(mix_params)
        format.html { redirect_to @mix, notice: 'Mix was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mix.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mix.destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user.id) }
      format.json { head :no_content }
    end
  end

private

    def find_mix
      @mix = Mix.find_by(slug: params[:id])
    end


    def mix_params
      params.require(:mix).permit(:title, :slug, :body, :profile_id, :spotify_url, :category_id, :image_url, :user_id, :commentable)
    end
end
