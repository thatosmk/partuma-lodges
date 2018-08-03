Rails.application.routes.draw do

  get 'avatar/create'
  get 'avatar/update'
  get 'avatar/destroy'
  resources :rooms do
      resources :bookings
  end
  get 'registrations/after_sign_up_path_for'
  get 'registration/after_sign_up_path_for'
  resources :accounts
  resources :events
  get 'site/about'
  get 'site/contact'
  get 'site/profile', to: "site#profile", as: '/profile'

  devise_for :users, controllers: { registrations: "registrations" }

  # setup root page
  root to: "site#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
