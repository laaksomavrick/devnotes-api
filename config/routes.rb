Rails.application.routes.draw do
  scope :api do
    resource :tokens, only: [:show]
  end
  #root to: "auth#index"
end
