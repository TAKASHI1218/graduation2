class FoodsController < ApplicationController

  before_action :set_food, only: [:show, :edit, :update, :destroy]
  before_action :refuse_to_go_to, only: [:new, :edit]


  def index
    @foods = Food.all
  end

  def new
    if user_signed_in?
      @food = Food.new
    else redirect_to tops_path, notice:"権限がありません"
    end
  end

  def create
    @food = Food.create(food_params)
    if @food.save
      redirect_to foods_path, notice:"焼き鳥を作成しました！"
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @food.update(food_params)
      redirect_to foods_path, notice:"焼き鳥を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @food.destroy
    redirect_to foods_path, notice:"焼き鳥を削除しました！"
  end

  private

  def food_params
    params.require(:food).permit(:name, :picture, :picture_cache, :price, :comment)
  end

  def set_food
    @food = Food.find(params[:id])
  end

  def refuse_to_go_to
    unless current_user.admin
      redirect_to tops_path, notice: '権限がありません。'
    end
  end


end
