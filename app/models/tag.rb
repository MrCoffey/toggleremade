class Tag < ActiveRecord::Base
	#Listando de menor a mayor
	default_scope { order(created_at: :desc) }

	belongs_to :user
	belongs_to :tag
end
