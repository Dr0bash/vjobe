Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "main_page#index"
  get 'login' => 'login#index'
  get 'login/new' => 'login#new'
  get 'login/new/employee' => 'login#new_emloyee'
  get 'login/new/employer' => 'login#new_employer'
  get 'employee' => 'employee#index'
  get 'employer' => 'employer#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
