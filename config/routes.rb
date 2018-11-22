Rails.application.routes.draw do
  scope :api do
    post "user_token", to: "user_token#create"
    resource :users, only: [:create]
  end
end
