class TodolistController < ApplicationController
	before_filter :signed_in_user, only: [:create, :edit ,:destory]
    before_filter :correct_user,   only: [:destroy, :edit, :update]

	def new
		@todolist=current_user.todolists.build
	end

	def create
		@todolist=current_user.todolists.build(params[:todolist])
	    if @todolist.save
	      # Handle a successful save.
	      flash[:success] = "success create a to-do Objcet"
	      redirect_to(root_path)
	    else
	      @mylist_items = []
	      render 'static_pages/home'
    	end
	end

	def edit
		@todolist=current_user.todolists.find_by_id(params[:id])
	end

	def update
		@todolist=current_user.todolists.find_by_id(params[:id])
		if @todolist.update_attributes(params[:todolist])
			flash[:success] = "Update!"
		end
		redirect_to root_path
	end

	def show
	end

	def destroy
		@todolist.destroy
    	redirect_to root_url
	end

	private

	    def correct_user
	    	@todolist = current_user.todolists.find_by_id(params[:id])
      		redirect_to root_url if @todolist.nil?
	    end
end
