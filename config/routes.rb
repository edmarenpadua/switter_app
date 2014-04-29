SwitterApp::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root  'users#new'
  match '/',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'users#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'


end
