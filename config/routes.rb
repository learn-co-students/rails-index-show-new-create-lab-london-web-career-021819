Rails.application.routes.draw do

  resources :coupons, only: [:index, :new, :create, :show]
  # get 'coupons/:id', to: 'coupons#show', as: :coupon
end
