class CodesController < ApplicationController
 require 'rqrcode'

  def index
    @codes = Code.all       
  end

  def show
    #nous devons vérifier que cela ne fonctionne que si un document existe ainsi que son slug. En cas de cours non-existant --> redirigé sur page d'accueil

    #@code = Code.(params[:id])
    #if @code.nil?
     # redirect_to root_path
    #end
  end

  def edit
  end

  def destroy
  end
end
