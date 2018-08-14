class User < ApplicationRecord
  validates :image, :first_name, :last_name, :title, :description, presence: true

  # has_many :tweets ==> this is WIP

  def full_name
    "#{first_name} #{last_name}"
  end
end
