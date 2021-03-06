Rails.application.routes.draw do
  get 'about/info'
  devise_for :admins
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  get 'home/index'

  resources :activity_logs, :activities

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
