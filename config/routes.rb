Rails.application.routes.draw do

  namespace :admin do
       
    resources :documents
    resources :codes
    resources :societes

#Important à conserver pour le dashboard de Administrate. Afin de lui donner les divers onglets du tableau de bord
  
  end

  root to: 'documents#index'
  
  
  # Création de la page Documents pour montrer les différents documents enregistrés en base de données
  get '/documents' => 'documents#index'

  # Pour le post du formulaire d'ajout d'un livre
  post '/documents' => 'documents#create'

  # Création de la page "Codes" pour création du code
  get '/historique' => 'codes#index'

  # Pour aller sur le code généré sur  document précisé : le code X du doc BA - par le slug
  get 'codes/:slug' => 'codes#show', as: :code


  # Pour retrouver le doc lui meme avec pour url /documents/le_nom_du_doc <-- SLUG
  # utile pour le bouton "voir le doc" quand on est sur la page des documents
  get 'documents/:slug' => 'documents#show', as: :document

  get 'societes' => 'societes#show'

  
 
end
