Rails.application.routes.draw do
  resources :fitnesses
  get 'home/index'

  devise_for :users
   root to: "fitnesses#index"
 
end
