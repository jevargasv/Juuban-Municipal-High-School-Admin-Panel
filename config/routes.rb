Rails.application.routes.draw do
  get 'attendances/index'
  get 'calendars/index'
  get 'schedules/index'
  get 'teachers/index'
  get 'courses/index'
  get 'students/index'
  get 'cohorts/index'
  get 'grades/index'
  get 'admins/index'
  root :to => 'page#index'
  get 'page/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
