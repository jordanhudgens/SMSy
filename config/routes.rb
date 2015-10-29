Rails.application.routes.draw do
  resources :notifications
  
  root to: "notifications#index"
end
