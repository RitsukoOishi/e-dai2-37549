Rails.application.routes.draw do
  root to: "edais#index"
  resources :edais
end
