class User < ApplicationRecord
  has_and_belongs_to_many :permissions

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
