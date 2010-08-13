class ApplicantsController < ApplicationController	
	active_scaffold :applicant do |config|
		config.columns = [:type, :first_name, :middle_names, :last_name, :email, :address_1, :address_2, :city, :governorate, :postal_code, :phones]
		list.columns.exclude :type, :middle_names, :address_1, :address_2, :city, :governorate, :postal_code, :phones
		create.columns.exclude :type
		show.columns.exclude :type
		update.columns.exclude :type
		config.list.sorting = [{ :first_name => :asc}, {:last_name => :asc}]
		config.nested.add_link("Academic Credentials", [:academic_credential])
		config.nested.add_link("Current Employment", [:employment])
	end
end
