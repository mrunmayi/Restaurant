Rails.application.routes.draw do

  get 'restaurants/new', as: 'new_restaurant'
  post 'restaurants'=> 'restaurants#create'

  get 'restaurants' => 'restaurants#index'
  get 'restaurants/:id' => 'restaurants#show'


end
