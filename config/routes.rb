Rails.application.routes.draw do

  get 'film/show' => 'film#show'
  get 'film/opening' => 'film#opening'
  get 'vehicle/show' => 'vehicle#show'

  get 'starship/show' => 'starship#show'

  get 'species/show' => 'species#show'

  get 'planet/show' => 'planet#show'

  get 'character/show' => 'character#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#home'
end
