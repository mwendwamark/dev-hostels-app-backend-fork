class Reservation < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :hostel, optional: true
    has_many :reviews
  end
