Rails.application.routes.draw do
  root to: 'pages#home'
  resources :books do
    resources :transactions
  end
  get 'books/dashboard', to: 'books#dashboard', as: :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
