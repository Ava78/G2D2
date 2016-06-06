Rails.application.routes.draw do

  get 'historique/index'

  get 'historique/show'

  get 'historique/edit'

  get 'historique/delete'

  namespace :admin do
    resources :documents 
    resources :codes
    resources :historique
#Important à conserver pour le dashboard de Administrate. Afin de lui donner les divers onglets du tableau de bord

  root to: "documents#index"
  end


  root to: "codes#index"
  
  # création de la page Documents pour montrer les différents documents enregistrés en base de données
  get '/documents' => 'documents#index'

  # Création de la page "Codes" pour création du code
  get '/codes' => 'codes#index'

  # Pour récuperer le Slug dans du document dans l'url 
  get 'documents/:slug'=> 'documents#show'






end
