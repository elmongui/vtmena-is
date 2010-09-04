class CorrespondenceTopic < ActiveRecord::Base
	has_many :correspondences
	
	def to_s
		id.to_s + ": " + topic
	end
end
