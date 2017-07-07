Rails.application.routes.draw do
  root to: "products#welcome"
  devise_for :users

  resources :user do
    resources :products
  end

  resources :products do
    resources :reviews
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
