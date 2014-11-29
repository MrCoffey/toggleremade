class Todo < ActiveRecord::Base
	belongs_to :user
	has_many :todos

	#validates :item, presence: { message: "Ypur todo list needs a name!"}
end
