Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/teachers'
  get 'pages/students'
  resources :grades
  resources :subjects
  resources :teachers
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
