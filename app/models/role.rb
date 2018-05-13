class Role < ApplicationRecord
	has_many :role_users, dependent: :destroy
  has_many :user, through: :role_users
end
