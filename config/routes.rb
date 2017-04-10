Rails.application.routes.draw do
  get 'bookings/title:string'

  get 'bookings/user:references'

  get 'bookings/service:references'

  get 'bookings/status:string'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
