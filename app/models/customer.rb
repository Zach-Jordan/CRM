class Customer < ApplicationRecord
  validates :full_name, presence: true
  validates :phone_number, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["id", "full_name", "phone_number", "email", "notes", "image"]
  end
end
