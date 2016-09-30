Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'projects#index'

  resources :projects, only: [:create]

  get "admin", to: "admin#index"
  delete "reset_projects", to: "projects#destroy_all"

end
