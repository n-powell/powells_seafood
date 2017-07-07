Rails.application.routes.draw do
  root to: "products#index"
  devise_for :users

  resources :user do
    resources :products
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
