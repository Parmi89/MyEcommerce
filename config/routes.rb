Rails.application.routes.draw do
  get 'admin/index'
  devise_for :admins
  devise_for :users
  root 'landing#index'

  devise_scope :admin do
    get 'admin', to: 'devise/sessions#new'
  end


end