Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'

  post '/signup', to: 'registrations#create'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
end
