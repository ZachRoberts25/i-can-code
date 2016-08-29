Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homepage#home'
  get '/repl' => 'repl#show'
  get '/gen_token' => 'repl#gen_token'
end
