class AdminController < ApplicationController
  def index
  	# KT@HOME - I'm given to believe it's poor form to have a heavy controller like this but it seems more secure to be explicit and redirect from here for non-admins.
  	is_admin = (Role.find(current_user.role_id).role_name == "Admin")
  	if is_admin
  		# use default route
   	else
		redirect_to new_user_session_path, notice: 'You are not an Admin'
   end
  end
end
