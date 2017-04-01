Rails.application.routes.draw do
  resources :stories
  root 'paws#index'
  put 'paws/love' => 'paws#love'
  resources :paws
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
