Rails.application.routes.draw do
  #resources :urls
  get 'base/new', to: 'base#new'
  post 'base2', action: :do, controller: 'base'
  root 'base#new' 
  #set root to controller named base, with the method new... 
  #of note. this technically allows for url hiding.. since i can just hide the controller names by renaming a different route.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
