class GossipsController < ApplicationController


  def index
  end

  def create

	if current_user != nil
	@gossip = Gossip.new(title:params[:title],content:params[:content],user:current_user) 

	else
	@gossip = Gossip.new(title:params[:title],content:params[:content],user:User.find_by(first_name:"anonymous")) 

  if @gossip.save # essaie de sauvegarder en base
		# si ça marche, il redirige vers la page d'index du site
  else
		render :error
    # sinon, il render la view new (qui est celle sur laquelle on est déjà)
  end
	end
end

  def new
  end

  def show
		@id=params[:id]
		@gossip=Gossip.find(params[:id])
  end

  def edit
  end

  def update
		@gossip=Gossip.find(params[:id])
		gossip_params = params.permit(:title, :content)
		if @gossip.update(gossip_params)
		else
			render :error_edit
		end
  end

  def destroy
		@gossip=Gossip.find(params[:id])
		@gossip.destroy
		redirect_to gossips_path
  end

	private

	def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end

end
