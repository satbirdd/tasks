class Sprint < ActiveRecord::Base
	has_many :tasks

	def state
		case read_attribute(:state)
		when 0
			:planning
		when 1
			:implementing
		when 2
			:finished
		else
			:invalid
		end
	end

	def state= (stat)
		write_attribute(:state, stat)
	end
end
