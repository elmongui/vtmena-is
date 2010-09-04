class Correspondence < ActiveRecord::Base
	belongs_to :correspondence_topic

	def self.in_out_options
		{:options=>[["صادر", "out"], ["وارد", "in"]]}
	end
end
