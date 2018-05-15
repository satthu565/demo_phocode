Rails.application.routes.draw do
  get 'home/index'

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
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  scope '(:locale)' do
    resources :users
    resources :orders
    resources :line_items
    resources :carts
    resources :products do
      get :who_bought, :on => :member
    end
    root :to => 'store#index', :as => 'store'
  end
end
