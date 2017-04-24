Rails.application.routes.draw do
  get 'bartender/index'

  get 'bartender/show'

  devise_for :users
  root to: 'pages#home'
  resources :bartenders, only: [:index, :show]

end
