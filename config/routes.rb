Rails.application.routes.draw do
  resources :menu_items, only: [:index, :show]
  
  namespace :admin do
    resources :menu_items, except: [:show]
  end

  get '/about' => 'visitors#index'

  root to: 'visitors#soon'
end
