Rails.application.routes.draw do

  devise_for :buyers, :controllers => {:registrations => 'registrations'}
  root 'pages#index'
  resources :buyers, :only => [:show, :new, :create, :index]
  resources :posts, :path => 'blog', :only => [:index]
  resources :provider do 
    resources :offering, :only => [:new]
  end
  resource :offerings, :only => [:show, :index]
  

end
