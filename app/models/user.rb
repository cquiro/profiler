class User < ApplicationRecord
  validates :image, :first_name, :last_name, :title, :description, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
