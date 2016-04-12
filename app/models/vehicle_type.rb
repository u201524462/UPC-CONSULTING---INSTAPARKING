class VehicleType < ActiveRecord::Base
    has_many :commission
    def name
        self.short_description
    end
end
