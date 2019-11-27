Rails.application.routes.draw do
      devise_for :users
  root to: 'pages#home'
  resources :books do
    resources :transactions
  end
get 'pages/dashboard', to: 'pages#dashboard', as: :dashboard
get 'pages/dashboard/update/:status/:id', to: 'pages#update', as: :update_dashboard

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
