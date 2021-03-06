Rails.application.routes.draw do
  # For details on the DSL available within this file, 
  # see https://guides.rubyonrails.org/routing.html

  root    "home#top"

  # ログイン/ログアウト
  get     "/login"            => "sessions#new"
  post    "/login"            => "sessions#create"
  delete  "/logout"           => "sessions#destroy"

  get     "users/new"         => "users#new"
  post    "users/create"      => "users#create"
  delete  "users/:id/destroy" => "users#destroy"

  get     "tasks/index"       => "tasks#index"
  get     "tasks/new"         => "tasks#new"
  post    "tasks/create"      => "tasks#create"
  
  get     "tasks/:id/edit"    => "tasks#edit"
  patch   "tasks/:id/update"  => "tasks#update"
  delete  "tasks/:id/destroy" => "tasks#destroy"

  post    "tasks/:id/completed" =>  "tasks#completed"

end