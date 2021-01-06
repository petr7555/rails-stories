Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/about' => 'pages#about'
  get '/thanks' => 'pages#thanks'

  resources :signups, only: [:new, :create]
  post "signups/new"

end
