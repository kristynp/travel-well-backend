class Destination < ApplicationRecord
  belongs_to :user
  has_many :images
  has_one :cdc_info
  validates :name, :user_id, presence: true
end
