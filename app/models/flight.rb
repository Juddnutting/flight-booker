class Flight < ActiveRecord::Base
	belongs_to :departure_airport, class_name: "Airport", foreign_key: "origin_id"
	belongs_to :destination_airport, class_name: "Airport", foreign_key: "destination_id"
end
