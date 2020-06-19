class DestinationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :user_id, :notes

  has_many :cdc_infos, serializer: CdcInfoSerializer
end

