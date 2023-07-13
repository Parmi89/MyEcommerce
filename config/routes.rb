Rails.application.routes.draw do
  get 'admin/index'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :admins, controllers: {sessions: 'admins/sessions'}

  root 'landing#index'

end