class CodesController < ApplicationController
  def index
    # pour la page historique, affiche tous les codes
    @codes = Code.all     
  end

  def create
    Code.create title: params[:title], description: params[:description]
    redirect_to new_admin_code_path
  end

  def show
    # Pour retrouver le code réalisé pour le doc... x. on va le rechercher par le biais du slug.
    @code = Code.find_by(slug: params[:slug])
    
    #on relie les 2 tables Doc et Code par leur slug, afin d'avoir une url document/slug du doc/codes/slug du code ==> voir le code Y créé sur le doc X

    #@code = Code.joins(:document)
                #.where(
                 # 'documents.slug' => params[:slug_document],
                 # 'slug' => params[:slug_code]
                  #).first

    #render text: "blablabla"






    # Message d'alerte flash si pas de code pour le document
    if @code.nil?
      flash[:notice] = "Aucun code n'a pour l'instant été généré. Souhaitez vous en créé un ?"
      redirect_to new_admin_code_path
    end
  end
 
end
