Rails.application.routes.draw do
  resources :users
  resources :notebooks
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
