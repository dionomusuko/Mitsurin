Rails.application.routes.draw do

  root 'mitsurins#index'
  get '/mitsurins/about', to: 'mitsurins#about'

  resources :mitsurins
  get 'mitsurins/:id/purchase', to: 'mitsurins#purchase'
  post '/mitsurins/search', to: 'mitsurins#search'
  get 'get_image/:id', to: 'mitsurins#get_image'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
