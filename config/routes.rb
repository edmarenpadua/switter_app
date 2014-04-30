SwitterApp::Application.routes.draw do
  resources :comments
  resources :users
  resources :swits do
  	resources :comments
  end
  resources :sessions, only: [:new, :create, :destroy]

  root  'users#new'
  match '/',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'users#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/feed', to: 'swits#index',		via: 'get'


end
