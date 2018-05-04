Rails.application.routes.draw do
  resources :urls
  get 'base/new', to: 'base#new'
  post 'base2', action: :do, controller: 'base'
  root to: 'base#new' #set root to controller named base, with the new method...
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
