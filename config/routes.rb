Rails.application.routes.draw do
  get 'offerings/show'

  root 'pages#index'
  resources :offerings 

end
