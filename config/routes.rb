Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    collection do
      get 'search'
    end
  end

  resources :groups

  authenticated :user do
    root 'users#dashboard', as: :user_dashboard
  end

  root 'static_pages#home'
end
