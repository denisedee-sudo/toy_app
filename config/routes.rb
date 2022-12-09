Rails.application.routes.draw do
  get 'microposts/index'
  get 'microposts/show'
  get 'microposts/new'
  get 'microposts/create'
  get 'microposts/edit'
  get 'microposts/update'
  get 'microposts/delete'
  resources :microposts
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  get 'user/index'
  get 'user/show'
  get 'user/new'
  get 'user/edit'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
