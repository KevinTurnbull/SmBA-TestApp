class AddRoles < ActiveRecord::Migration
  def change
    Role.create(role_name: "User")
    Role.create(role_name: "Admin")
  end
end
