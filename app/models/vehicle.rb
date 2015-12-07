class Vehicle < ActiveRecord::Base
	def to_s
		"#{license_plate}: #{car_year} #{car_make} #{car_model}"
	end

	#required fields
	validates :license_plate, presence:true#, message: "Must Provide License Plate"
	#alphanumeric only
	validates :license_plate, format: {with: /[a-zA-Z0-9 ]*/, message: "only Alphanumeric Characters and Space on License Plates"}

	validates :car_colour, format: {with: /[a-zA-Z]*/}

	validates :car_make, presence:true#, message: "Must Provide Car's Make"

	# 1900 < year < this.year
	validates :car_year, numericality: { greater_than: 1900 , message: "This car's too old"}
	validates :car_year, numericality: { less_than_or_equal_to: Date.today.strftime("%Y").to_i, message: "This car hasn't been made yet!"}
end
