Rails.application.routes.draw do
  devise_for :users

  resources :events
  resources :kids

  #root to: 'pages#home'
  root to: 'events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
