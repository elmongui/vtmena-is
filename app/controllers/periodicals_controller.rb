class PeriodicalsController < ApplicationController	
	active_scaffold :periodical do |config|
		config.columns = [:type, :name, :publisher, :count]
		list.columns.exclude :type
		create.columns.exclude :type
		show.columns.exclude :type
		update.columns.exclude :type
	end
end
