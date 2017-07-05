Rails.application.routes.draw do

  devise_for :buyers
  root 'pages#index'
  resources :offerings, :only => [:index, :show]

end
