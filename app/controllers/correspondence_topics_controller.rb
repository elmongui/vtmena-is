class CorrespondenceTopicsController < ApplicationController
	before_filter :require_view_for_correspondence_mgmt
	
	active_scaffold :correspondence_topic do |config|
		config.columns = [:id, :topic, :correspondences]
		list.columns.exclude :correspondences
		create.columns.exclude :id
		update.columns.exclude :id
		config.list.sorting = [{:id => :asc}]
		config.show.link = false
		config.nested.add_link("Correspondences", [:correspondences])
	end
	
	def create_authorized?
		User.access?(session[:user_id], "correspondence_mgmt", "edit")
	end
	def delete_authorized?
		User.access?(session[:user_id], "correspondence_mgmt", "admin")
	end
	def update_authorized?
		User.access?(session[:user_id], "correspondence_mgmt", "admin")
	end
end
