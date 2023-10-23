Rails.application.routes.draw do
  devise_for :users
  
  root "users#index"

  # get "/login" => "login"

  
end
