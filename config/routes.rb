Rails.application.routes.draw do

  get 'site/about'
  get 'site/contact'
  devise_for :users

  # setup root page
  root to: "site#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
