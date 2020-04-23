Rails.application.routes.draw do

  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"

  post "posts/create" => "posts#create"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/updateaddress" => "posts#updateaddress"
  post "posts/:id/updatephonenumber" => "posts#updatephonenumber"
  post "posts/:id/updateagreement" => "posts#updateagreement"
  post "posts/:id/updateremarka" => "posts#updateremarka"
  post "posts/:id/destroy" => "posts#destroy"


  get "posts/:id/edit" => "posts#edit"
  get "posts/:id/address" => "posts#address"
  get "posts/:id/phonenumber"=> "posts#phonenumber"
  get "posts/:id/agreement" => "posts#agreement"
  get "posts/:id/remarka" => "posts#remarka"

  get "/" => "home#top"
  get "about" => "home#about"
end
