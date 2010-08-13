class Applicant < Person
	has_one :academic_credential
	has_one :employment
end
