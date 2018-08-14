module ZemogaPortfolioApi
  class UsersController < ZemogaPortfolioApi::BaseController
    def show
      render json: user, serializer: ZemogaPortfolioApi::UserSerializer, status: :ok
    end

    def update
      if user.update_attributes(permitted_params)
        render json: user, status: :ok, serializer: ZemogaPortfolioApi::UserSerializer
      else
        render json: { errors: user.errors }, status: :unprocessable_entity
      end
    end

    private
    
    def user
      @user ||= User.first
    end

    def permitted_params
      params.require(:user).permit(
        :first_name,
        :last_name,
        :title,
        :image,
        :description
      )
    end
  end
end
