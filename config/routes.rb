Rails.application.routes.draw do
  namespace :api do 
    resources :categories do
      resources :products
    end
  end
end

=begin 
  fetch('http://localhost:3000/api/categories')
  fetch('http://localhost:3000/api/categories/{:id}')
  fetch('http://localhost:3000/api/categories/{:id}/products')

=end