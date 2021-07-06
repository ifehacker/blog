Rails.application.routes.draw do
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
 root "articles#index"
 
  resources :articles do

      resources :comments

  end
resources :authors

resources  :author_sessions, only: [ :new, :create, :destroy ]

get "login", to: "author_sessions#new"
get "logout", to: "author_sessions#destroy"

end
