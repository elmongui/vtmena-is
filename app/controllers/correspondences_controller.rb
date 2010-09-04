class CorrespondencesController < ApplicationController
	before_filter :require_view_for_correspondence_mgmt

	active_scaffold :correspondence do |config|
		config.columns = [:id, :in_out, :date, :status, :details]
		create.columns.exclude :id
		update.columns.exclude :id
		config.list.sorting = [{:correspondence_topic_id => :asc}, {:date => :asc}]
		config.columns[:in_out].form_ui = :select
		config.columns[:in_out].options = Correspondence.in_out_options
		config.columns[:status].form_ui = :select
		config.columns[:status].options = Correspondence.status_options
		config.show.link = false
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
