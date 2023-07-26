class User < ApplicationRecord
  require "securerandom"

  has_secure_password

  # Validations
  validates :email, :name, :password, :password_confirmation, presence: true
  validates :email, uniqueness: true
  validates :name, length: { maximum: 64, minimum: 2 }
  validates :password, length: { minimum: 6, maximum: 64 }
  validates :phone_number, uniqueness: true #, message: {"Please enter a valid phone number"}
end
