class TaskItem < ActiveRecord::Base
	belongs_to :task

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
