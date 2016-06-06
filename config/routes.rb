Rails.application.routes.draw do

  namespace :admin do
    resources :codes
    resources :documents 
#Important à conserver pour le dashboard de Administrate. Afin de lui donner les divers onglets du tableaude bord

  root to: "codes#index"
  end


  root to: "codes#index"
  
  # création de la page Documents pour montrer les différents documents enregistrés en base de données
  get '/documents' => 'documents#index'

  # Création de la page "Codes" pour création du code
  get '/codes' => 'codes#index'






end
