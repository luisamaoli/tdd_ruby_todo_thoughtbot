Rails.application.routes.draw do

  root to: "todos#index"

  resources :todos, only: [:index, :new, :create] do 
    resource :completion, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :session, only: [:new, :create]
end
