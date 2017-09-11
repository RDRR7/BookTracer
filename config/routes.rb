Rails.application.routes.draw do
  get 'static_pages/home'

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }
  
  root to: "static_pages#home"
end
