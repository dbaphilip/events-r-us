Rails.application.routes.draw do
  get "events" => "events#index"
  get "events/:id/edit" => "events#edit", as: :edit_event
  get "events/:id" => "events#show", as: :event
  get "up" => "rails/health#show", as: :rails_health_check
  root "events#index"
end
