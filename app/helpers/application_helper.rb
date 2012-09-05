module ApplicationHelper
	def full_title(page_title)
		base_title = "Ruby on Rails Tutorial Sample App"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def show_delete_link object_of_micropost
		if current_user?(object_of_micropost.user)
    	link_to "delete", object_of_micropost, method: :delete,
                                     data: { confirm: "You sure?" },
                                     title: object_of_micropost.content 
  		end 
  	end
end
