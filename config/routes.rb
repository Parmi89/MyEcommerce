Rails.application.routes.draw do
  root 'landing#index'
  get 'admin/index'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :admins, controllers: {sessions: 'admins/sessions'}


  resources :frequentquestions
    
end