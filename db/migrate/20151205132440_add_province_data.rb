class AddProvinceData < ActiveRecord::Migration
  def change
  	Province.create(name: "Alberta")
  	Province.create(name: "British Columbia")
  	Province.create(name: "Manitoba")
  	Province.create(name: "New Brunswick")
  	Province.create(name: "Newfoundland and Labrador")
  	Province.create(name: "Nova Scotia")
  	Province.create(name: "Ontario")
  	Province.create(name: "Prince Edward Island")
  	Province.create(name: "Quebec")
  	Province.create(name: "Saskatchewan")
  	Province.create(name: "Northwest Territories")
  	Province.create(name: "Nunavut")
  	Province.create(name: "Yukon")
  end
end