Rails.application.routes.draw do

  namespace :admin do
       
    resources :documents
    resources :codes

#Important à conserver pour le dashboard de Administrate. Afin de lui donner les divers onglets du tableaude bord

  root to: "documents#index"
  end


  root to: "documents#index"
  
  # création de la page Documents pour montrer les différents documents enregistrés en base de données
  get '/documents' => 'documents#index'

  # Création de la page "Codes" pour création du code
  get '/codes' => 'codes#index'

  # Pour récuperer le Slug dans du document dans l'url 
  get 'documents/:slug'=> 'documents#show'






end
