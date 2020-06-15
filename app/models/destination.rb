class Destination < ApplicationRecord
  belongs_to :user
  has_one :cdc_info
  validates :name, :user_id, presence: true
end
