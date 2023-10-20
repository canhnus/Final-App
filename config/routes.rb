Rails.application.routes.draw do
  
  root "logins#login"

  get "/login" => "logins#login"

  get "/signup" => "signups#signup"

  get "/signups/signup" => "signups#signup"
  
end
