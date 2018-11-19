Rails.application.routes.draw do
  namespace :api do
    get "hello", to: "auth#index"
  end
  root to: "auth#index"
end
