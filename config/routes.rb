Rails.application.routes.draw do

  devise_for :users
  root 'pages#index'
  
  resources :teachers
  resources :courses
  resources :students
  resources :cohorts
  resources :grades
  resources :admins

end
