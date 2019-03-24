Rails.application.routes.draw do
  resources :menu_items, only: [:index, :show]
  
  namespace :admin do
    resources :menu_items, except: [:show]
  end

  get '/welcome' => 'visitors#index'
  get '/menu' => 'menu_items#index'
  get '/about' => 'visitors#about'
  get '/info' => 'visitors#info'
  # get '/gallery' => 'visitors#gallery'
  get '/contact' => 'visitors#contact'

  root to: 'visitors#index'
end
