class TRegCodesController < ApplicationController
  def new
    @code = TRegCode.new
  end

  def create
    @code = TRegCode.new(code_params)

    if @code.save
      # binding.pry
      redirect_to t_user_path(@code.f_user_id), success: 'QRコードの発行が完了しました'
    else
      @user = TUser.find_by(id: @code.id)
      flash.now[:error] = 'エラーによりQRコードの発行ができませんでした'
      render 't_users/show'
    end
  end

  private
  def code_params
    params.permit(:f_code, :f_user_id, :f_val_date, :f_inval_date)
  end
end
