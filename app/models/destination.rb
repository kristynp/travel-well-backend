class Destination < ApplicationRecord
  belongs_to :user
  has_many :images
  validates :name, :user_id, presence: true
end
