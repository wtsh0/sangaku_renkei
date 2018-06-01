class TUsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def index
    @users = TUser.all.reverse_order
  end

  def show
  end

  def new
    @user = TUser.new
  end

  def create
    @user = TUser.new(user_params)
    if @user.save
      redirect_to t_user_path(@user), success: "#{@user.f_lastname + " " + @user.f_firstname}様の登録が完了しました"
    else
      render 'new', error: "エラーが発生しています"
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), success: "ユーザー情報を変更しました"
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path, success: "#{@user.f_lastname + @user.f_firstname}様を削除しました"
  end


  private
  def set_user
    @user = TUser.find(params[:f_user_id])
  end

  def user_params
    params.require(:t_user).permit(:f_user_id, :f_lastname, :f_firstname, :f_birthday, :f_mail, :f_country_id, :f_language_id, :f_login_flg, :f_sex, :f_comment, :f_auth_flg)
  end
end
