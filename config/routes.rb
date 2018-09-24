Rails.application.routes.draw do
  
  root "shops#index"
  devise_for :users
  get "shops" => "shops#index"
  get "shops/new" => "shops#new"
  post "shops" => "shops#create"
  get "users/:user_id" => "users#show"
  delete "shops/:id" => "shops#destroy"
  get "shops/:id/edit" => "shops#edit"
  patch "shops/:id" => "shops#update"
end
