Rails.application.routes.draw do

  root 'pages#index'
  resources :offerings, :only => [:index, :show]

end
