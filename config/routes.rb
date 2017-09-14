Rails.application.routes.draw do
  devise_for :users

  resources :sushi_rolls
end
