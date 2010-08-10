class AchievementsController < ApplicationController
	active_scaffold :achievement do |config|
		config.columns = [:person, :kind, :title, :authors, :outlet, :year]
		config.list.sorting = [{:year => :desc}]
	end
end
