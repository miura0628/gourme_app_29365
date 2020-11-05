Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :address, only: [:index, :show]
  end
end
