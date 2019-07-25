Rails.application.routes.draw do

  require'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'


  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  
  get 'subscribers/new', to: 'subscribers#new'
  post 'subscribers', to: 'subscribers#create'

end
