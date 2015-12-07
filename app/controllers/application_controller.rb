class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	# KT@HOME - Stole this from http://stackoverflow.com/a/17384426/5552808
	before_filter :update_sanitized_params, if: :devise_controller?

	def update_sanitized_params
	  devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:fName,:lName,:address,:city,:province,:postcode,:phonenum,:role_id, :email, :password, :password_confirmation)}
	  devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:fName,:lName,:address,:city,:province,:postcode,:phonenum,:role_id, :email, :password, :password_confirmation)}
	end
	#  private
	#	def post_params
	#	    params.require(:post).permit(:fName,:lName,:address,:city,:province,:postcode,:phonenum,:role_id)
	#	end
end
