class DestinationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :country, :user_id, :notes, :images
  has_many :images, serializer: ImageSerializer
end

