Rails.application.routes.draw do
  get 'startwars/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homepage#home'
  get '/repl' => 'repl#show'
  get '/gen_token' => 'repl#gen_token'
  get '/starwars' => 'starwars#home'
end
