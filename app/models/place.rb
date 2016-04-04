class Place < ActiveRecord::Base
  belongs_to :districts
  belongs_to :vehicle_type
end
