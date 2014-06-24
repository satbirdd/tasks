class Task < ActiveRecord::Base
  belongs_to :sprint

  has_many :items, class_name: 'TaskItem'

  def state
		case read_attribute(:state)
		when 0
			:planning
		when 1
			:finished
		else
			:invalid
		end
	end

	def state= (stat)
		write_attribute(:state, stat)
	end
end
