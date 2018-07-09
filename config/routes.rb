Rails.application.routes.draw do
  devise_for :admins
  devise_for :companies
  devise_for :students
  get 'home/index'
  root "home#index"
end
