Rails.application.routes.draw do
  # devise_for :users, controllers: {
  #   sessions: "users/sessions",
  #   registrations: "users/registrations"
  # }
  devise_for :users
  root :to =>"homes#top"
  get "/homes/about" => "homes#about" ,as: "about"
  resources:books,only:[:new,:create,:index,:show,:destroy,:edit,:update]
  resources:users,only:[:show,:edit,:update,:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
