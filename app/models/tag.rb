class Tag < ActiveRecord::Base

	def self.sort_users
  	Tag.order(created_at: :asc)	         
  end  
end
