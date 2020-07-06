class DestinationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :country, :user_id, :notes, :cdc_info, :images
  has_many :images, serializer: ImageSerializer
end

