class LibraryItemsController < ApplicationController
	active_scaffold :library_item do |config|
		config.columns = [:type, :name, :authors, :count, :edition, :publisher]
	end
end
