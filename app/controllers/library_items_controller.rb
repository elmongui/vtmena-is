class LibraryItemsController < ApplicationController
	before_filter :require_edit_for_library_mgmt

	active_scaffold :library_item do |config|
		config.columns = [:type, :name, :authors, :count, :edition, :publisher]
	end
end
