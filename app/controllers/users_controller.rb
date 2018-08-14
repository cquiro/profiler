class UsersController < ApplicationController
  def show
    @user = user
    # RetrieveTweetsService.new(user).perform ==> this is WIP
  end

  def new
    if User.count > 0
      redirect_to '/edit'
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: 'Your profile has been created.'
    else
      render :new
    end
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
