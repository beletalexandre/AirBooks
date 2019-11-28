class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])

  end

  def update
     @user = User.find(params[:id])
     @user = User.update(user_strong)
     redirect_to dashboard_path(status: 'livres')
  end

  private

  def user_strong
    params.require(:user).permit(:first_name, :last_name, :avatar, :address)
  end
end
