Rails.application.routes.draw do  

  get 'users/show'
  root to: 'top#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  resources :users, only: %i(show update)
  resources :list, only: %i(new create edit update destroy) do
    resources :card, except: %i(index)
  end

end