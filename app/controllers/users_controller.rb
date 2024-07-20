class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show] # showアクションはログイン不要とする
  before_action :set_user, only: [:show, :edit, :update]
  before_action :authorize_user, only: [:edit, :update]

  def show
    @qualification = params[:qualification_id] ? qualification.find_by(id: params[:qualification_id]) : nil
    @comment = params[:comment_id] ? comment.find_by(id: params[:comment_id]) : nil
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:nickname, :email, :profile, :password, :password_confirmation)
  end

  def authorize_user
    unless current_user == @user
      redirect_to root_path
    end
  end
end
