Rails.application.routes.draw do
  resources :departments
  resources :students
  root 'students#index'
end

