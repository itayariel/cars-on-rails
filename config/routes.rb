Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles
  
  resources :cars

  root 'welcome#index'
end
