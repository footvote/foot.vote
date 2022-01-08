class SloganResource
  include Alba::Resource

  root_key :slogan

  attribute :id do |resource|
    Digest::MD5.hexdigest resource.id.to_s
  end

  attribute :point do |resource|
    RGeo::GeoJSON.encode(resource.point)
  end

  attributes :summary, :details
end
