Rails.application.routes.draw do
  devise_for :admins, skip: [:registrations, :confirmations, :passwords], defaults: { format: :json }
  devise_for :users, defaults: { format: :json }

  root to: "application#health_check"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
end
