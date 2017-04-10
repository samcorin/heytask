Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :services, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:show, :index]
  end

  resources :bookings,

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
