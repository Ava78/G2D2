Rails.application.routes.draw do

 

  namespace :admin do
    resources :documents

    root to: "codes#index"
  end

  root to: "documents#index"

  # création de la page about pour expliquer ce que présente le site web
  get '/about' => 'pages#about'

  # création de la page Documents pour montrer les différents documents enregistrés en base de données
  get '/documents' => 'documents#index'


#proposés lors de la création du controller - confirmer si routes nécessaires
  get 'code2_d/index'

  get 'code2_d/create'

  get 'code2_d/show'

  get 'code2_d/edit'

  get 'code2_d/destroy'




end
