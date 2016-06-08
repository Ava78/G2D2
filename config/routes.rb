Rails.application.routes.draw do

  get 'pages/index'

  get 'pages/show'

  namespace :admin do
       
    resources :documents
    resources :codes

#Important à conserver pour le dashboard de Administrate. Afin de lui donner les divers onglets du tableaude bord

  
  end

  root to: 'pages#index'
  
  
  # création de la page Documents pour montrer les différents documents enregistrés en base de données
  get '/documents' => 'documents#index'

  # pour le post du formulaire d'ajout d'un livre
  post '/documents' => 'documents#create'

  # Création de la page "Codes" pour création du code
  get '/historique' => 'codes#index'

  # Pour récuperer le Slug dans du document dans l'url 
  get 'documents/:slug'=> 'documents#show', as: 'document'

  #pour aller sur le code généré sur  document précisé : le code X du doc BA - par le slug
  get 'codes/:id' => 'codes#show', as: 'code'

  #pour modif l'url et voir tous les codes, l'url s'appelera historique
  get 'historique' => 'codes#index'


 

  
 
end
