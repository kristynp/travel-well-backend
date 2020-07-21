class Comment < ApplicationRecord
  belongs_to :destination
  validates :destination_id, presence: true
end
