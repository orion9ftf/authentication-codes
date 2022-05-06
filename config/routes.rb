Rails.application.routes.draw do
  #get 'photos/index'
  #get 'photos/new'
  resources :photos
  root "photos#index"

end
