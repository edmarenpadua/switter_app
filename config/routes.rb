SwitterApp::Application.routes.draw do
  resources :comments
  resources :users
  resources :swits do
    member do
      post :vote_up
    end
  end
  resources :swits do
    member do
      post :vote_down
    end
  end
  resources :sessions, only: [:new, :create, :destroy]

  root  'users#new'
  match '/',  to: 'users#new',            via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
end
