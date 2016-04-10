class Reservation < ActiveRecord::Base
  belongs_to :district
  belongs_to :vehicle_type
  belongs_to :place
end
