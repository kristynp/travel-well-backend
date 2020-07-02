class DestinationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :country, :user_id, :notes, :cdc_info
end

