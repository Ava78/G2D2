Rails.application.routes.draw do

  namespace :admin do
    resources :documents

    root to: "documents#index"
  end

  root 'pages#index'

  # création de la page about pour expliquer ce que présente le site web
  get '/about' => 'pages#about'

  # création de la page Documents pour montrer les différents documents enregistrés en base de données
  get '/documents' => 'documents#index'


end
