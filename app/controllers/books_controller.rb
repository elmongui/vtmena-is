class BooksController < ApplicationController	
	active_scaffold :book do |config|
		config.columns = [:type, :name, :authors, :edition, :publisher, :count]
		list.columns.exclude :type
		create.columns.exclude :type
		show.columns.exclude :type
		update.columns.exclude :type
	end
end
