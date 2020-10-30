class UsersController < ApplicationController
  def create
		@user=User.create(first_name:params[:first_name],last_name:params[:last_name], email:params[:email],password:params[:password], city:City.first, age:params[:age])
  
	if @user.save
	else
		render :new_user_error
	end

	end
end
