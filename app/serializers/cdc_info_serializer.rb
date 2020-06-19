class CdcInfoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :destination_id, :advisories, :vaccinations
end
