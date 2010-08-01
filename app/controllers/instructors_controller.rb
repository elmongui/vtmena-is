class InstructorsController < ApplicationController
	active_scaffold :instructor do |config|
		config.columns = [:professor, :class_schedule]
	end
end
