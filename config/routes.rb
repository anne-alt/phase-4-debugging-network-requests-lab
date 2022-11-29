Rails.application.routes.draw do
  resources :toys, only: [:index, :create, :update, :destroy, :increment_likes]
  patch "/toys/:id/likes", to: "toys#increment_likes"

end
