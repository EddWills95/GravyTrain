Rails.application.routes.draw do

  devise_for :buyers, :controllers => {:registrations => 'registrations'}
  root 'pages#index'
  resources :offerings, :only => [:index, :show]
  resources :posts, :path => 'blog', :only => [:index]

end
