Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  resources :vc_firms, only: [:index, :new, :create, :edit, :update, :show, :delete] do
    resources :startups, only: :index
  end
  resources :startups, only: [:show]
end
