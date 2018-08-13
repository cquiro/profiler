class UsersController < ApplicationController
  def show
    @user = user
  end

  private
  
  def user
    User.first || DefaultUser.new
  end
end
