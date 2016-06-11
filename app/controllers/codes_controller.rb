class CodesController < ApplicationController
  def index
    @codes = Code.all     
  end

  def create
    Code.create title: params[:title], description: params[:description]
    redirect_to new_admin_code_path
  end

  def show
    # Pour retrouver le code réalisé pour le doc... x. on va le rechercher par le biais du slug.
    @code = Code.find_by(slug: params[:slug])
    
    # Message d'alerte flash si pas de code pour le document
    if @code.nil?
      flash[:none] = "Aucun code n'a pour l'instant été généré. Souhaitez vous en créé un ?"
      redirect_to new_admin_code_path
    end
  end
 
end
