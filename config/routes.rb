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

  get 'ctrl/para(/:id)' => 'ctrl#para'
  get 'ctrl/para_array'
  get 'ctrl/req_head'
  get 'ctrl/req_head2'
  get 'ctrl/double_render'
  get 'ctrl/plain_render'
  get 'ctrl/redirect'
  get 'ctrl/log'
  get 'ctrl/cookie'
  post 'ctrl/cookie_rec'
  get 'ctrl/session_show'
  post 'ctrl/session_rec'
end
