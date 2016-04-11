class Place < ActiveRecord::Base
  belongs_to :district
  belongs_to :vehicle_type
end
