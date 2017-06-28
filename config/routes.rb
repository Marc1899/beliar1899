Rails.application.routes.draw do

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'statics/index'
  get 'settings/index'
  get '/about' => 'static#about', :as => :about
  get 'peliculas/index'

  resources :settings
  resources :peliculas
  resources :comentarios
  resources :charges

  root :to => "statics#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
