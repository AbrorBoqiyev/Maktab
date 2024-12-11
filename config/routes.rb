Rails.application.routes.draw do
  resources :grades
  resources :subjects
  resources :teachers
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
