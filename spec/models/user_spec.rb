require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#full_name" do
    it 'returns concatenated first and last names separated by a space' do
      user = create(:user)

      expect(user.full_name).to eq("#{user.first_name} #{user.last_name}")
    end
  end
end
