class ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :destination_id, :url, :external_id, :description, :alt_description
end

