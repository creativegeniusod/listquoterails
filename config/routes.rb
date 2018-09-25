SampleApp::Application.routes.draw do
  get "quotesondesign/index"
  resources :posts
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  root to: 'posts#listquote'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/cronadd', to: 'posts#cronadd', via: 'get'
  match '/listquote', to: 'posts#listquote', via: 'get'
  match '/ajaxcall', to: 'posts#ajaxcall', via: 'get'
end
