class CreateProvinceTable < ActiveRecord::Migration
  def up
    create_table :provinces do |t|
  		t.string :name, null: false
    end
  end

  def down
  	drop_table :provinces
  end
end
