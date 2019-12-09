class UsersController < ApplicationController
  # before_action :set_user, only: [:destroy, :edit]

  def index
    @users = User.all
  end

  # def show
  #   @user = User.find(params[:id])
  # end 

  # def destroy
  #   @user.destroy
  #   redirect_to users_path, notice: 'ユーザー削除しました'
  # end
  #
  # def edit
  # end
  #
  # def update
  #   if @user.update(user_params)
  #     redirect_to users_path, notice:"ユーザーを編集しました！"
  #   else
  #     render :edit
  #   end
  # end
  #
  #
  #
  #
  #
  # private
  #
  # def set_user
  #   @user = User.find(params[:id])
  # end
  #
  # def user_params
  #   params.require(:user).permit(:name, :email, :password,
  #                                   :password_confirmation)
  # end
end

  #
  # def new
  #   @user = User.new
  # end
  #
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #      redirect_to user_path(@user.id)
  #   else
  #     render 'new'
  #   end
  # end
  #
  # # def show
  # #   @user = User.find(params[:id])
  # # end
  #
  # def edit
  #   @user = User.find(params[:id])
  #   if @user == current_user
  #   else
  #     flash[:again] = 'idが一致しません。'
  #     redirect_to user_path(@user.id)
  #   end
  # end
  #
  # def update
  #   @user = User.find(params[:id])
  #
  #   if current_user == @user
  #     if @user.update(user_params)
  #       flash[:success] = 'ユーザー情報編集しました。'
  #       redirect_to user_path(params[:id])
  #     else
  #       flash.now[:failed] = 'ユーザー情報の編集に失敗しました。'
  #       render :edit
  #     end
  #   else
  #     flash[:again] = 'idが一致しません。'
  #     redirect_to :new
  #   end
  # end
  #
  #
  #
  # private
  #
  #
  # end
