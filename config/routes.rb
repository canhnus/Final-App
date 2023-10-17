Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users

  # lấy danh sách user có trạng thái từ người dùng nhập vào qua controller users, action: index
  # Lưu ý, cách này sẽ ko vi phạm route
  # get '/users/:status', to: 'users#index'

  get '/users', to: 'users#index'
  

  # composite key paramters
  # Dùng extract_value để tách id theo 1 ký tự bất kỳ
  # id = params.extract_value(:id)
  resources :photos do
    collection do
      get 'search'
    end
  end
  
end
