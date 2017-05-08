
Rails.application.routes.draw do

  devise_for :bartenders, skip: :registerable
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get '/log_in', to: 'pages#sign_in'
  post '/bartenders/search', to: 'bartenders#search'
  get 'bartenders/:id/dashboard', to: 'bartenders#dashboard', as: 'bartender_dashboard'

  get '/bartenders/search', to: 'bartenders#search', as: "bartender_search"
  resources :bartenders, only: [:index, :show] do
    resources :reviews, only: [:new, :create, :update]
  end

  resources :parties, only: [:show, :create, :new]

  patch 'parties/:id/confirm', to: 'parties#bartender_confirm', as: 'party_bartender_confirm'
  patch 'parties/:id/reject', to: 'parties#bartender_reject', as: 'party_bartender_reject'

  resources :messages, only: [:create]

end
