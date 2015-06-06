Rails.application.routes.draw do
  root to: 'creatures#index'

  get '/creatures', to: 'creatures#index'

  get '/creatures/new', to:'creatures#new', as: "new_creature"

  # rake routes to check this route out
  get '/creatures/:id', to: 'creatures#show', as: "creature"

  post '/creatures', to: 'creatures#create' 

  # get '/creatures/:id/edit', to: 'creatures#edit'
  get '/creatures/:id/edit', to: 'creatures#edit', as: "edit_creature" 

  # The update route
  put "/creatures/:id", to: "creatures#update"  , as: "update_creature"  

  # the destroy route
  delete "/creatures/:id", to: "creatures#destroy"

end
