module ApplicationHelper

	# return title based on input string
	def full_title page_title
		base_title = "bookmark-app"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
