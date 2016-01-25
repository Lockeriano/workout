Rails.application.routes.draw do
  resources :trainings do
  	resources :exercises
  end
  root 'trainings#index'
end
