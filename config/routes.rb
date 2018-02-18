Rails.application.routes.draw do
  root 'discussions#index'
  resources :discussions do
  		resources :comments
  end
  resources :accounts, :except => [:index]
  get 'authentication/login'
  post 'authentication/login'
  get 'authentication/logout'
end
