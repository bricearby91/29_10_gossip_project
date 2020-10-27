class UserController < ApplicationController
  def show_details
		@user=User.find_by(first_name:params[:first_name])
	end
end
