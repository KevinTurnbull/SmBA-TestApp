class AddFieldsToUser < ActiveRecord::Migration
  def change
  	# Add the biographical details requested by the task
  	add_column :users, :fName, :string
  	add_column :users, :lName, :string
  	add_column :users, :address, :string
  	add_column :users, :city, :string
  	add_column :users, :province, :string
  	add_column :users, :postcode, :string
  	add_column :users, :phonenum, :string

  	# Add a reference to the roles table
  	add_reference :users, :role
  end
end
