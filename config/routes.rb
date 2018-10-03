Rails.application.routes.draw do

  resources :posts
  get 'avatar/create'
  get 'avatar/update'
  get 'avatar/destroy'

  resources :rooms do
      resources :bookings
  end
  resources :events

  # serve /site/ pages
  get '/about-us', to: "site#about", as: '/about'
  get '/contact-us', to: "site#contact", as: '/contact'
  get '/profile', to: "site#profile", as: '/profile'
  get '/dashboard', to: "site#dashboard", as: '/dashboard'
  get '/users', to: "site#users", as: '/users'
  get '/room-bookings', to: "site#room_bookings", as: '/bookings'
  get '/venues', to: "site#venues", as: '/venues'
  get '/blog', to: "site#blog", as: '/blog'
  get '/admin', to: "site#admin", as: '/admin'
  get '/support', to: "site#support", as: '/support'
  get '/change_profile_picture', to: "site#add_profile_picture", as: '/change_profile_picture'

  # serve user management
  devise_for :users , controllers: { registrations: "registrations" }
  resources :accounts

  # setup root page
  #root to: "site#index"
  root to: "site#maintain"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
