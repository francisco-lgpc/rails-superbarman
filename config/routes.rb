Rails.application.routes.draw do
 
  devise_for :users
  root to: 'pages#landing'
  get '/home', to: 'pages#home'
  resources :bartenders, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
