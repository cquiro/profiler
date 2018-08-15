class UsersController < ApplicationController
  def show
    @user = user
    @tweets = load_tweets(@user.twitter_account)
  end

  def new
    if User.count > 0
      redirect_to edit_path
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
    if User.count == 0
      redirect_to new_path
    else
      @user = user
    end
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

  def load_tweets(twitter_handle)
    TweetsLoaderService.new(twitter_handle, 5).perform
  end
end
