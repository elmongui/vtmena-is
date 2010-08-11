class LibraryCheckoutsController < ApplicationController
	before_filter :require_edit_for_library_mgmt

	active_scaffold :library_checkout do |config|
		config.columns = [:library_item, :person, :checkout, :checkin]
	end
end
