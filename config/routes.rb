Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :consumptions, only: [:new, :create] do
    resources :cigarettes, only: [:create]
  end
  get '/login', to: 'pages#login', as: 'login'
  get '/simulation', to: 'pages#simulation', as: 'simulation'
  get '/result', to: 'pages#result', as: 'result'
  get '/objective/new', to: 'pages#new_objective', as: 'new_objective'
  post '/objective/create', to: 'pages#create_objective', as: 'create_objective'
  get '/objective/show', to: 'pages#show_objective', as: 'show_objective'
  get '/dashboard', to: 'dashboards#dashboard', as: 'dashboard'
  get '/dashboard/pot', to: 'dashboards#pot', as: 'dashboard_pot'
  get '/dashboard/health', to: 'dashboards#health', as: 'dashboard_health'
  get '/dashboard/motivation', to: 'dashboards#motivation', as: 'dashboard_motivation'
  get '/dashboard/consumption', to: 'dashboards#new_consumption', as: 'dashboard_new_consumption'
  post '/dashboard/consumption', to: 'dashboards#create_consumption', as: 'dashboard_create_consumption'
  get '/profile', to: 'profiles#profile_home', as: 'profile_home'
  get '/profile/edit/profile_info', to: 'profiles#profile_info', as: 'profile_info'
  # edit_user_registration GET    /users/edit(.:format)

  # user_registration PATCH  /users(.:format)
  get '/profile/edit/profile_bank', to: 'profiles#edit_profile_bank', as: 'profile_bank'
  patch '/profile/edit/profile_bank', to: 'profiles#update_profile_bank'
  #consumptions POST   /consumptions(.:format) consumptions#create
  # new_consumption GET    /consumptions/new(.:format) consumptions#new
  get '/get_my_pot', to: 'profiles#recover_my_pot', as: 'recover_my_pot'
  patch '/get_my_pot', to: 'profiles#withdraw', as: 'withdraw'
end
