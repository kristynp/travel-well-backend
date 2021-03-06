class Destination < ApplicationRecord
  belongs_to :user
  has_many :images
  has_many :comments
  validates :name, :user_id, :country, presence: true
end
