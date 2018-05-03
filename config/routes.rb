Rails.application.routes.draw do
  get 'profile/index'

  get 'profile/profile'

  resources :comments
  resources :posts
  devise_for :users
  get 'static_pages/home'
  get '/profile', to: 'profile#index'
  get '/profile/:id' => 'profile#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'static_pages#home'
    root :to => 'site#home'

end
