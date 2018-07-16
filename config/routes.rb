Rails.application.routes.draw do
  resources :fan_comments
  resources :reviews
  resources :authors
  resources :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hello/index'
  get 'hello/view'
  get 'hello/list'
  get 'hello/app_var'

  get 'record/keywd'
  post 'record/keywd_process'
end
