Rails.application.routes.draw do
  root to: 'static_pages#home', as: 'home' 
  get '/new', to: 'users#new', as: 'new_user'
  post '/create', to: 'users#create', as: 'create_user'
  get '/profile/:id', to: 'users#profile', as: 'profile_user'
end
