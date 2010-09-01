class UsResidenciesController < ApplicationController
  active_scaffold :us_residency do |config|
    config.columns = [:person, :date_started, :date_ended, :address_1, :address_2, :city, :state, :zipcode, :phones]
    create.columns.exclude :person
	show.columns.exclude :person
	update.columns.exclude :person
  end
end
