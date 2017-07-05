Rails.application.routes.draw do

  devise_for :buyers
  devise_for :providers
  root 'pages#index'
  resources :offerings, :only => [:index, :show]

end
