Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resource :profile, only: [:show, :edit, :update]

  resources :services, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end

  namespace :admin do
    resources :bookings, only: [:index, :destroy]
  end


  resources :bookings, only: [ :index, :show, :destroy ]

  resources :gigs, only: [:index, :show ] do
    member do
      patch :accept
      patch :reject
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
