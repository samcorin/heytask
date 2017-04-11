Rails.application.routes.draw do
  get 'categories/index'

  get 'categories/show'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  # /profile
  # profilescontroller
  resource :profile, only: [:show, :edit, :update]

  resources :services, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :show]

  # gigscontroller
  resources :gigs, only: [:index, :show ] do
    member do
      patch :accept
      patch :reject
    end
  end

  resources :categories, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
