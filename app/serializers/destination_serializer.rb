class DestinationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :user_id, :notes, :cdc_info
end

