class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # userはたくさんのitemを持っている
  has_many :items
end
