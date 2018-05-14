Rails.application.routes.draw do
  get 'admin/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'

  resources :products
  get 'say/hello'

  get 'say/goodbye'

  root :to => 'store#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
