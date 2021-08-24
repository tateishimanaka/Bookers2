Rails.application.routes.draw do
 devise_for :users
 root to: 'homes#top' 
 get "/home/about" => "homes#about", as: "home/about_path"
 
 resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
 resources :users, only: [:create, :index, :show, :edit, :update]
end

