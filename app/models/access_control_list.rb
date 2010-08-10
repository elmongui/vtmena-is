class AccessControlList < ActiveRecord::Base
	def self.select_options(access)
		"h <option " + 
		(access=="none" ? "h selected='selected'" : "") +
		"h >none</option>" +
		"h <option " +
		(access=="view" ? "h selected='selected'" : "") +
		"h >view</option>" +
		"h <option " +
		(access=="view+edit" ? "h selected='selected'" : "") +
		"h >view+edit</option>" +
		"h <option " +
		(access=="view+edit+admin" ? "h selected='selected'" : "") +
		"h >view+edit+admin</option>"
	end
end
