Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :new, :create] do
    resources :address, only: [:index]
  end
end
