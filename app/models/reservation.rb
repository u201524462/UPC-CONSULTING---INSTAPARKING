class Reservation < ActiveRecord::Base
  belongs_to :districts
  belongs_to :vehicle_type
  belongs_to :places
end
