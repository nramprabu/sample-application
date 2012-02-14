class HomeController < ApplicationController
def show
	user=User.find params[:id]
	if user.present?
		user.update_attribute(:status, true)
		redirect_to root_path
	else
		render :text =>"Invalid User"
	end	
end	
end
