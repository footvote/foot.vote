class Slogan < ApplicationRecord
  attribute :point, :st_point, srid: 4326, geographic: true
end
