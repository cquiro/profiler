require "spec_helper"

describe DefaultUser do
  describe '#image' do
    it 'returns a placeholder url when called' do
      expect(DefaultUser.new.image).to eq Faker::Placeholdit.image("200x200")
    end
  end

  describe '#full_name' do
    it "returns 'User Name' when called" do
      expect(DefaultUser.new.full_name).to eq 'User Name'
    end
  end

  describe '#title' do
    it "returns 'Job Title' when called" do
      expect(DefaultUser.new.title).to eq 'Job Title'
    end
  end
  describe '#description' do
    it "returns 'Description of the user's job.' when called" do
      expect(DefaultUser.new.description).to eq 'Description of the user\'s job.'
    end
  end
end
