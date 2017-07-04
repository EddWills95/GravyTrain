Rails.application.routes.draw do
  root 'pages#index'

  get 'help', to: 'pages#help'

  post 'find_out_more', to: 'pages#find_out_more'

  resources :offerings, :only => [:index]
end
