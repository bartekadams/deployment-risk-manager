Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  root to: "resources#index"
  resources :resources, only: [:index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
