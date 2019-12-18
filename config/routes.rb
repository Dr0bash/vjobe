Rails.application.routes.draw do
  devise_for :employers
  devise_for :employees

  #get 'employee/index'
  #get 'employee/new'
  #get 'employee/create'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "main_page#index"
  get 'registration' => 'registration#index'
  get 'registration/vJober' => 'employee#new'
  get 'registration/Jobotodatel' => 'employer#new'
  get 'login' => 'login#index', as: :log_path
  post '' => 'employee#create'
  post '' => 'employer#create'
  get 'search_employees' => 'employee#index'
  get 'employee' => 'employee#show'
  get 'employer' => 'employer#show'

  devise_scope :employee do
    get 'employees/sign_out' => 'devise/sessions#destroy'
  end

  devise_scope :employer do
    get 'employers/sign_out' => 'devise/sessions#destroy'
  end

 # get 'employer' => 'employer#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :employee, only: [:new, :index, :create, :show, :edit]
  resources :employer, only: [:new, :index, :create, :show, :edit]
end
