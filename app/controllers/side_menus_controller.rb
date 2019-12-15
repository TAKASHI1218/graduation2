class SideMenusController < ApplicationController
  before_action :set_side_menu, only: [:show, :edit, :update, :destroy]
  before_action :refuse_to_go_to, only: [:new, :edit]



  def index
    @side_menus = SideMenu.all
  end

  def new
      @side_menu = SideMenu.new
  end

  def create
    @side_menu = SideMenu.create(side_menu_params)
    if @side_menu.save
      redirect_to side_menus_path, notice:"サイドメニューを作成しました！"
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @side_menu.update(side_menu_params)
      redirect_to side_menus_path, notice:"サイドメニューを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @side_menu.destroy
    redirect_to side_menus_path, notice:"サイドメニューを削除しました！"
  end

  private

  def side_menu_params
    params.require(:side_menu).permit(:name, :picture, :picture_cache, :price, :kind)
  end

  def set_side_menu
    @side_menu = SideMenu.find(params[:id])
  end

  def refuse_to_go_to
    if current_user == nil
      redirect_to tops_path, notice: '権限がありません。'
    elsif current_user.admin == false
      redirect_to tops_path, notice: '権限がありません。'
    end
  end

end
