class User < ApplicationRecord
  validates :password, confirmation: true, presence: true
  validates :password_confirmation, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  has_secure_password
  has_many :records
end
