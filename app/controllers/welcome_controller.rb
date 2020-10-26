class WelcomeController < ApplicationController
  def show
		@user=User.create(first_name:params[:first_name])
  end
end
