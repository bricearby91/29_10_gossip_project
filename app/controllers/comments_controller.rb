class CommentsController < ApplicationController

	def new
	end

	def show
	end	

	def create
	if current_user != nil
	@comment = Comment.new(content:params[:content], gossip:Gossip.find(params[:id]), user:current_user) 
		
	else
	@comment = Comment.new(content:params[:content], gossip:Gossip.find(params[:id]), user:User.find_by(first_name:"anonymous")) 
	end	
  if @comment.save # essaie de sauvegarder en base
		# si ça marche, il redirige vers la page d'index du site
		redirect_to gossip_path
  else
		puts params.inspect	
		puts params[:id]
		puts "./////////////////////////////////."
		puts params[:id]
		puts params[:id]
		puts "error"	
		puts "error"	
  	render :error
    # sinon, il render la view new (qui est celle sur laquelle on est déjà)
	#	redirect_to gossip_path(@gossip.id)
	end	
end
  
def edit
end

	def update
		puts params[:id]
	@comment = Comment.new(content:params[:content], gossip:Gossip.find(params[:id]), user:User.find_by(first_name:"anonymous")) 

  if @comment.save # essaie de sauvegarder en base
		# si ça marche, il redirige vers la page d'index du site
		redirect_to gossips_path
  else
		puts params.inspect	
		puts params[:id]
		puts "./////////////////////////////////."
		puts params[:id]
		puts params[:id]
		puts "error"	
		puts "error"	
	end
end

end
