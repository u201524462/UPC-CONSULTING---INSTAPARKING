class Commission < ActiveRecord::Base
  belongs_to :vehicle_type
  belongs_to :districts
end
