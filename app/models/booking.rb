class Booking < ApplicationRecord
  has_many :users
  has_one :request
end
