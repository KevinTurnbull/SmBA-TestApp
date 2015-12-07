
class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :trackable, :validatable

	# Validations for various fields
	# validates :province, inclusion: {in: Province.all, message: "That's an unrecognized Province"}

	# Stolen from http://stackoverflow.com/a/20971688/5552808
	validates :phonenum, format: {with: /(?:(?:\(?(?:00|\+)([1-4]\d\d|[1-9]\d?)\)?)?[\-\.\ \\\/]?)?((?:\(?\d{1,}\)?[\-\.\ \\\/]?){0,})(?:[\-\.\ \\\/]?(?:#|ext\.?|extension|x)[\-\.\ \\\/]?(\d+))?/i }

	# Stolen from http://geekswithblogs.net/MainaD/archive/2007/12/03/117321.aspx
	validates :postcode, format: {with: /[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}/i }

	def to_s
		"#{id}: #{fName} #{lName}"
	end

	has_one :role
end
