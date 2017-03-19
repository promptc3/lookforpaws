Rails.application.routes.draw do
  root 'paws#index'
  resources :paws
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
