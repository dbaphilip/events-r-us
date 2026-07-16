Rails.application.routes.draw do
  resources :registrations
  resources :events
  root "events#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
