module ApplicationHelper
	def full_title(page_title)
		base_title = "work hub"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def show_delete_link object
		if current_user?(object.user)
    	link_to "delete", object,method: :delete,data: { confirm: "Are you sure?"}
  		end 
  	end
end