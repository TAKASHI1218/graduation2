class DrinksController < ApplicationController

  before_action :set_drink, only: [:show, :edit, :update, :destroy]
  before_action :refuse_to_go_to, only: [:new, :edit]



  def index
    @drinks = Drink.all
  end

  def new
      @drink = Drink.new
  end

  def create
    @drink = Drink.create(drink_params)
    if @drink.save
      redirect_to drinks_path, notice:"ドリンクを作成しました！"
    else
      render :new
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
    if @drink.update(drink_params)
      redirect_to drinks_path, notice: "ドリンクを編集しました！"
    else
      render :edit
    end
  end



  def destroy
    @drink.destroy
    redirect_to drinks_path, notice:"ドリンクを削除しました！"
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :price)
  end

  def set_drink
    @drink = Drink.find(params[:id])
  end

  def refuse_to_go_to
    if current_user == nil
      redirect_to tops_path, notice: '権限がありません。'
    elsif current_user.admin == false
      redirect_to tops_path, notice: '権限がありません。'
    end
  end
end
