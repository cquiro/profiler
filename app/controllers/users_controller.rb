class UsersController < ApplicationController
  def show
    @user = user
  end

  def edit
    @user = user
  end

  def update
    if user.update_attributes(user_params)
      redirect_to root_path, notice: 'Your profile has been updated.'
    else
      render :edit
    end
  end

  private
  
  def user
    User.first || DefaultUser.new
  end

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :title,
      :image,
      :description,
      :twitter_account
    )
  end
end
