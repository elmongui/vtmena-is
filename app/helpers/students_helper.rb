module StudentsHelper
	def student_us_residency_show_column(record)
		"<div>#{h render :active_scaffold => 'us_residencies', :constraints => { :person_id => record.id }}</div>"
	end
end
