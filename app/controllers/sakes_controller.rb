class SakesController < ApplicationController
  before_action :set_sake, only: [:show, :edit, :update, :destroy]
  
  def index
    @sakes = Sake.all
  end

  def new
    if user_signed_in?
      @sake = Sake.new
    else redirect_to tops_path, notice:"権限がありません"
    end
  end

  def create
    @sake = Sake.create(sake_params)
    if @sake.save
      redirect_to sakes_path, notice:"日本酒を作成しました！"
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    if user_signed_in?
    else redirect_to tops_path, notice:"権限がありません"
    end
  end

  def update
    if @sake.update(sake_params)
      redirect_to sakes_path, notice:"日本酒を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @sake.destroy
    redirect_to sakes_path, notice:"日本酒を削除しました！"
  end

  private

  def sake_params
    params.require(:sake).permit(:name, :picture, :picture_cache, :price, :comment)
  end

  def set_sake
    @sake = Sake.find(params[:id])
  end


end
