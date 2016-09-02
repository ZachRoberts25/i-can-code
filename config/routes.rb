Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#home'
  get '/home' => "homepage#home"
  post '/' => "homepage#home"
  get '/' => "homepage#home"
end
