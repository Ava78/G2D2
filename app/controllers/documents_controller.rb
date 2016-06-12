class DocumentsController < ApplicationController
  before_action :authenticate_user!

  def index
  	@documents = Document.all
  end

  def show
  	#nous devons vérifier que cela ne fonctionne que si un document existe ainsi 
    #que son slug. En cas de cours non-existant --> redirigé sur page d'accueil
  	@document = Document.find_by(slug: params[:slug])
  	if @document.nil?
      flash[:notice] = "Le document demandé n'existe pas. Contactez le service GED pour demander l'insertion."
  		redirect_to root_path
  	end
  end

  def create
    Document.create title: params[:title], description: params[:description], slug: params[:slug]
    redirect_to new_admin_document_path
  end
  
end
