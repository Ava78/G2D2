class SocietesController < ApplicationController
  def index
    @societes = Societe.all
  end

  def show
    @societe = Societe.find_by(nom: params[:nom])
  end

  def create
    Societe.create nom: params[:nom], adresse: params[:adresse]
    redirect_to new_admin_societe_path
  end

  def update
  end

  def destroy
  end
end
