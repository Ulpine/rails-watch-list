Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get root to: "lists#index"

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create, :index]
  end

  resources :bookmarks, only: [:destroy]
end
