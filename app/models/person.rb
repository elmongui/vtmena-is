class Person < ActiveRecord::Base
	has_many :phones, :as => 'owner'
	has_one :us_residency
	has_many :achievements

    def to_label
		"#{first_name} #{last_name}"
	end
	
	def to_s
		to_label
	end
	
	def name
		"#{first_name} #{middle_names} #{last_name}"
	end
end

