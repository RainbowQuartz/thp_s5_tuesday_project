Rails.application.routes.draw do
  root to: 'static_pages#home'
  get '/new', to: 'users#new', as: 'new_user'
  post '/create', to: 'users#create', as: 'create_user'
  get '/profile/:username', to: 'users#profile', as: 'profile_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
