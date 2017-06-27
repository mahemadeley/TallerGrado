Rails.application.routes.draw do
  root 'shop#index'
  
  get 'tienda/login' => 'client#new'
  post 'tienda/sesion/ingresar' => 'cliente#create'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
