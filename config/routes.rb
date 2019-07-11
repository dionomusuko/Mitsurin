Rails.application.routes.draw do

  root 'mitsurins#index'
  resources :mitsurins
  post '/mitsurins/search', to: 'mitsurins#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
