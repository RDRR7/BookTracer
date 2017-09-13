Rails.application.routes.draw do
  resources :reviews
  get 'static_pages/home'
  get 'static_pages/logged'

  authenticated :user do
    resources :static_pages, only: [:logged]
  end

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }

  root to: "static_pages#home"
end
