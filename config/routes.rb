Rails.application.routes.draw do

  get 'payment_select/select_plan'

  get 'payment_select/select_monthly_subscription'

  get 'select_movies/index'

  devise_for :users, controllers: { registrations: "users/registrations"}
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'statics/index'
  get 'settings/index'
  get '/about' => 'static#about', :as => :about
  get 'peliculas/index'

  require 'sidekiq/web'
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  resources :settings
  resources :peliculas
  resources :comentarios
  resources :charges
  resources :select_movies, only: :index

  root :to => "statics#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
