class Grubber < ActiveRecord::Base
	before_create :configure_new_grubber
	
	def configure_new_grubber
		self.subscribed = true
	  	if self.mobile.present?
	  		self.text_ok = true
	  	end
	  	if self.email.present?
	  		self.email_ok = true
	  	end
	end
end
