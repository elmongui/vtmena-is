class AdvisorshipsController < ApplicationController
	active_scaffold :advisorship do |config|
		config.columns = [:professor, :student]
	end
end
