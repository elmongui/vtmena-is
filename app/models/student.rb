class Student < Person
	has_one :academic_credential
	has_one :employment
	has_one :vt_info
	has_one :au_info
	has_one :vtmena_academic_progress
	has_many :academic_milestones
	has_many :registered_classes
	has_many :class_schedules, :through => :registered_classes
	has_many :advisorships
	has_many :professors, :through => :advisorships
	end
