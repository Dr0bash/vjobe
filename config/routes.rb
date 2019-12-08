Rails.application.routes.draw do
  get 'employee/index'
  get 'employee/new'
  get 'employee/create'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "main_page#index"
  get 'login' => 'login#index'
  get 'registration' => 'registration#index'
  get 'registration/vJober' => 'employee#new'
  #post 'employee/new'
  get 'registration/Jobotodatel' => 'employer#new'
  get 'employee' => 'employee#show'
  get 'employer' => 'employer#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :employee, only: [:new, :index, :create]
end
