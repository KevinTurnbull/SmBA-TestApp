class CreateVehicles < ActiveRecord::Migration
  def change
#Vehicle Table:

    create_table :vehicles do |t|
#(1) license plate  (required)  (remove blanks and non alpha numeric character)
	t.string :license_plate, null: false
#(2) colour                          (alpha only)
	t.string :car_colour
#(3) make  (required)
	t.string :car_make, null: false
#(4) model
	t.string :car_model, null: false
#(5) year               (only allow a 4 digit number which is a valid year since 1900)
	t.integer :car_year

    end
  end
end
