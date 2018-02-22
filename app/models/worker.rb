class Worker < ApplicationRecord
  scope :free, -> {
    where(:available => true)
  }
end
