class Correspondence < ActiveRecord::Base
	belongs_to :correspondence_topic

	def self.in_out_options
		{:options=>[["out", "out"], ["in", "in"]]}
	end

	def self.status_options
		{:options=>[["pending", "pending"], ["done", "done"]]}
	end
end
