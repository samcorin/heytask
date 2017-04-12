Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, only: [:show]

  resource :profile, only: [:show, :edit, :update]

  resources :services, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end

  namespace :admin do
    resources :bookings, only: [:index]
  end


  resources :bookings, only: [:index, :show]

  resources :gigs, only: [:index, :show ] do
    member do
      patch :accept
      patch :reject
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
