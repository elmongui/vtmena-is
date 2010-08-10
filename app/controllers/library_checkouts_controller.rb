class LibraryCheckoutsController < ApplicationController
	active_scaffold :library_checkout do |config|
		config.columns = [:library_item, :person, :checkout, :checkin]
	end
end
