Rails.application.routes.draw do
  resources :parts
  resources :songs
  resources :projects
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :welcomes
end
