class UsResidenciesController < ApplicationController
  active_scaffold :us_residency do |config|
    config.columns = [:person_id, :date_started, :date_ended, :address_1, :address_2, :city, :state, :zipcode, :phones]
    create.columns.exclude :person_id
	show.columns.exclude :person_id
	update.columns.exclude :person_id
  end
end
