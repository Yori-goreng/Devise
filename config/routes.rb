Rails.application.routes.draw do  

  get 'users/show'
  root to: 'top#index'
<<<<<<< HEAD

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  resources :users, only: %i(show update)
=======
  
>>>>>>> 3e8a54b66af67b8936e1cb583a411e50a715ef8c
  resources :list, only: %i(new create edit update destroy) do
    resources :card, except: %i(index)
  end

end