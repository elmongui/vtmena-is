class CoursesController < ApplicationController
	active_scaffold :course do |config|
		config.columns = [:number, :topic, :university]
		config.list.sorting = [{:university => :asc}, {:number => :asc}]
	end
end
