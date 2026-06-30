Rails.application.routes.draw do
  resources :events
  get "up" => "rails/health#show", as: :rails_health_check
  root "events#index"
end
