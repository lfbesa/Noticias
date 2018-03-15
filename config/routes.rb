Rails.application.routes.draw do
  resources :news do
    resources :opinions
    collection do
      get :admin
    end
  end
  devise_for :users
  root 'news#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
