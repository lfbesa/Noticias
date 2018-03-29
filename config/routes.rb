Rails.application.routes.draw do
  #resources :news do
    #resources :opinions
    #collection do
    #  get :admin
    #end
  #end
  #devise_for :users
  #root 'news#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #mount API::Base, at: "/"
  #mount GrapeSwaggerRails::Engine, at: "/documentation"
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :news do
        resources :opinions, :path => "comments"
      end
    end
  end
end
