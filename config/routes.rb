Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'events#index'

  resources :events do
    resources :event_instances
  end

  resources :attendees
end
