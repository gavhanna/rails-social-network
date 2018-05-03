Rails.application.routes.draw do
  resources :comments
  resources :posts
  devise_for :users
  get 'static_pages/home'
  get '/profile', to: 'static_pages#profile'
  get '/profile/:id' => 'static_pages#profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'static_pages#home'
    root :to => 'site#home'

end
