Rails.application.routes.draw do
  resources :students
  resources :departments do
    member do
      get :delete
    end
  end
  root 'students#index'
end

