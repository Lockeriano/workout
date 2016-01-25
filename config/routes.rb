Rails.application.routes.draw do
  resources :trainings
  root 'trainings#index'
end
