Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  root 'homes#show'
  resource :dashboard, only: [:show]
  resources :teams, only: [:index, :new, :create, :show] do
    post 'add_athlete/:athlete_id' => 'memberships#create', as: 'athlete'
    delete 'drop_athlete/:athlete_id' => 'memberships#destroy', as: 'drop_athlete'
  end
end
