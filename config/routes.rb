Rails.application.routes.draw do
  devise_for :users

  resources :articles, only: %i[index show destroy]
end
