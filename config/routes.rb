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

  # pour le post du formulaire d'ajout d'un livre
  post '/documents' => 'documents#create'

  # Création de la page "Codes" pour création du code
  get '/historique' => 'codes#index'

  # Pour récuperer le Slug dans du document dans l'url 
  get 'documents/:id'=> 'documents#show'

 
end
