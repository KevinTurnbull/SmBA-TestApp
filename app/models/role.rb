class Role < ActiveRecord::Base
	def to_s
		"#{id}: #{role_name}"
	end
end
