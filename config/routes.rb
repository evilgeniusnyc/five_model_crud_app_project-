Rails.application.routes.draw do
  resources :assignments
  resources :project_sponsors
  resources :investors
  resources :projects
  resources :project_managers
 


# get '/assignments', to: 'assignments#index', as: 'assignments'
# get '/assignments/new', to: 'assignments#new', as: 'new_assignment'
# get '/assignments/:id', to: 'assignments#show', as: 'assignment'
# post '/assignments', to: 'assignments#create'

# get '/project_sponsors', to: 'project_sponsors#index', as: 'project_sponsors'
# get '/project_sponsors', to: 'project_sponsors#new', as: 'new_project_sponsor'
# get '/project_sponsor/:id', to: 'project_sponsors#show', as: 'project_sponsor'
# post '/project_sponsors', to: 'project_sponsors#create'

# get '/investors', to: 'investorss#index', as: 'investors'
# get '/investors/new', to: 'investors#new', as: 'new_investor'
# get '/investors/:id', to: 'investors/show', as: 'investor'
# post '/investors', to: 'investors#create'
# get '/investors/:id/edit', to: 'investors#edit', as: 'edit_investor'
# patch '/investors/:id', to: 'investors#update'
# delete 'investors/:id', to: 'investors#destroy'

# get '/projects', to: 'projects#index', as: 'projects'
# get '/projects', to: 'projects#new', as: 'new_project'
# get '/project/:id', to: 'project#show', as: 'project'
# post '/projects', to: 'projects#create'

# get '/project_managers', to: 'project_managers#index', as: 'project_managers'
# get '/project_managers', to: 'project_managers#new', as: 'new_project_manager'
# get '/project_manager/:id', to: 'project_managers#show', as: 'project_manager'
# post '/project_managers', to: 'project_managers#create'

end