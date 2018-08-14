require 'rails_helper'

describe ZemogaPortfolioApi::UsersController, type: :controller do
  describe "GET #show" do
    before(:each) do
      @user = create(:user)
    end

    it { expect(response).to have_http_status(:ok) }

    it "returns the user's information" do
      get :show

      user_response = JSON.parse(response.body, symbolize_names: true)

      expect(user_response[:full_name]).to eql @user.full_name
    end
  end

  describe "PATCH #update" do
    before(:each) do
      @user = create(:user, first_name: 'David', last_name: 'Dev')
    end

    it { expect(response).to have_http_status(:ok) }

    it "returns the user's information" do
      patch :update, params: { user: { first_name: 'Dave' } }

      user_response = JSON.parse(response.body, symbolize_names: true)

      expect(user_response[:full_name]).to eql 'Dave Dev'
    end
  end
end
