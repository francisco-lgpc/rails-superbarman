
Rails.application.routes.draw do

  devise_for :bartenders, skip: :registerable
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get '/log_in', to: 'pages#sign_in'
  post '/bartenders/search', to: 'bartenders#search'

  get '/bartenders/search', to: 'bartenders#search'
  resources :bartenders, only: [:index, :show] do
    resources :reviews, only: [:new, :create, :update]
    resources :parties, only: [:show, :create]
  end

end
