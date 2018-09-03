Rails.application.routes.draw do

  root 'pages#index'
 
  resources :teachers
  resources :courses
  resources :students
  resources :cohorts
  resources :grades
  resources :admins

end
