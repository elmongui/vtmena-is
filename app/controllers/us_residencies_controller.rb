class UsResidenciesController < ApplicationController
  active_scaffold :us_residency do |config|
    config.columns = [:person_id, :date_started, :date_ended, :address_1, :address_2, :city, :state, :zipcode]
=begin
    create.columns.exclude :person, :phones
	show.columns.exclude :person, :phones
	update.columns.exclude :person, :phones
=end
  end
end
