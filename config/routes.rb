Rails.application.routes.draw do
  devise_for :employers
  devise_for :employees, path: 'employee'
  #get 'employee/index'
  #get 'employee/new'
  #get 'employee/create'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "main_page#index"
  #get 'employees/profile', as: 'user_root'
  #get 'login' => 'login#index'
  get 'registration' => 'registration#index'
  get 'registration/vJober' => 'employee#new'
  #3post 'employee/new'
  get 'registration/Jobotodatel' => 'employer#new'
  post '' => 'employee#create'
  get 'search_employees' => 'employee#index'
  get 'employee' => 'employee#show'
  get 'login' => 'login#index'
 # get 'employer' => 'employer#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :employee, only: [:new, :index, :create, :show, :edit]
  resources :employer, only: [:new, :index, :create, :show, :edit]
end
