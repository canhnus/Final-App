Rails.application.routes.draw do
  # devise_for :users

  root "users#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_scope :user do  
    get '/users/sign_out' => 'users/sessions#destroy'     
  end


  # devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

  shallow do
    resources :users do
      resources :albums
      resources :photos
    end
  end

end
