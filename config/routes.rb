Rails.application.routes.draw do
  resources :menu_items, only: [:index, :show]
  
  namespace :admin do
    resources :menu_items, except: [:show]
  end

  root to: 'visitors#index'
end
