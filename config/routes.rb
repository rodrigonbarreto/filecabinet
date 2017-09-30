Rails.application.routes.draw do
  devise_for :users
  resources :docs
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
    root "docs#index", as: "authenticated_root"
  end

  root to: 'welcome#index'
end
