class PeopleController < ApplicationController
	active_scaffold :person do |config|
		config.columns = [:type, :title, :first_name, :middle_names, :last_name]
		list.columns.exclude :type
		create.columns.exclude :type
		show.columns.exclude :type
		update.columns.exclude :type
		config.list.sorting = [{ :first_name => :asc}, {:last_name => :asc}]
		config.columns[:title].form_ui = :select
		config.columns[:title].options = Person::title_options
	end
end
