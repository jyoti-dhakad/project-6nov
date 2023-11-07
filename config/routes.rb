Rails.application.routes.draw do
 
  resources :employees do
    resources :departments
    resources :leavetypes
    resources :salaries
  end
 
  resources :departments
  resources :leavetypes
  resources :salaries
end
