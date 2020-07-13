Rails.application.routes.draw do
namespace :api do 
  resources :categories do
    resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

=begin 
  fetch('http://localhost:3000/api/categories')
  fetch('http://localhost:3000/api/categories/{:id}')
  fetch('http://localhost:3000/api/categories/{:id}/products')

=end