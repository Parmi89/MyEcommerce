Rails.application.routes.draw do
  get 'admin/index'
  devise_for :admins
  devise_for :users
  root 'landing#index'

end