Rails.application.routes.draw do
  resources :cake_stacks

  root 'cake_stacks#index'
end
