class Preorder < ActiveRecord::Base

	validates_presence_of :full_name
	validates_presence_of :age
	validates_presence_of :city
	validates_presence_of :country
	validates_presence_of :email_address
	validates_presence_of :phone_number
	validates_presence_of :primary_care_physician_name
	validates_presence_of :how_did_you_hear_about_this_test

	validates_format_of :email_address, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
