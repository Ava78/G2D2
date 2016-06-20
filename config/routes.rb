Rails.application.routes.draw do

    root to: 'codes#index'
  
  
  # Création de la page Documents pour montrer les différents documents enregistrés en base de données
  get '/documents' => 'documents#index'

  # Pour le post du formulaire d'ajout d'un livre
  post '/documents' => 'documents#create'

  # Création de la page "Codes" pour création du code
  get '/historique' => 'codes#index'
  get '/codes' =>'codes#index'

  # Pour retrouver le doc ou le code seul, par le biais du slug :  url /documents/le_nom_du_doc <-- SLUG
  # ou url /codes/leaseplan_ba
  # Pratique pour les boutons et liens vers les pages
  get 'documents/:slug' => 'documents#show', as: :document

  # Idem Pour afficher le code 
  get 'codes/:slug' => 'codes#show', as: :code

  # Pour devise
  devise_for :users

  # Routes pour les USERS
  get 'user/check'



#Important à conserver pour le dashboard de Administrate. Afin de lui donner les divers onglets du tableau de bord
  namespace :admin do
       
    resources :documents
    resources :codes
 

  
  end
end
