class TUsersController < ApplicationController
  before_action :set_user, only: [:show, :create, :edit, :update]

  def index
    @users = TUser.all.reverse_order
  end

  def show
  end

  def new
    @user = TUser.new
  end

  def create
    @user = TUser.create(user_params)

    if @user.save
      redirect_to new_t_user_path, success: "#{@user.f_lastname + @user.f_firstname}様の登録が完了しました"
    else
      render 'new'
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
    params.require(:t_user).permit(:f_user_id, :f_lastname, :f_firstname, :f_birthday, :f_mail, :f_country_id, :f_login_flg, :f_sex, :f_comment)
  end
end
