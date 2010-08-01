class StudentsController < ApplicationController
  active_scaffold :student do |config|
    config.columns = [:type, :first_name, :middle_names, :last_name, :email, :address_1, :address_2, :city, :governorate, :postal_code, :phones]
    list.columns.exclude :type, :middle_names, :address_1, :address_2, :city, :governorate, :postal_code, :us_residency, :phones
    create.columns.exclude :type
	show.columns.exclude :type
	update.columns.exclude :type
    config.list.sorting = [{ :first_name => :asc}, {:last_name => :asc}]
	config.nested.add_link("US Residency", [:us_residency])
	config.nested.add_link("Academic Credentials", [:academic_credential])
	config.nested.add_link("Current Employment", [:employment])
	config.nested.add_link("Virginia Tech Info", [:vt_info])
	config.nested.add_link("Alexandria University Info", [:au_info])
	config.nested.add_link("VT-MENA Academic Progress", [:vtmena_academic_progress])
	config.nested.add_link("Advisorships", [:advisorships])
	config.nested.add_link("Academic Milestones", [:academic_milestones])
	config.nested.add_link("Courses Taken", [:registered_classes])
	config.nested.add_link("Achievements", [:achievements])
  end
end
