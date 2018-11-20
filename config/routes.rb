Rails.application.routes.draw do
  scope :api do
    resource :tokens, only: [:show]
    resource :users, only: [:create]
  end
end
