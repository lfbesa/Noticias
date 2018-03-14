Rails.application.routes.draw do
  resources :comments
  resources :news
  devise_for :users
  root 'news#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
