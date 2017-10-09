Rails.application.routes.draw do
  get 'sums/index'
  root 'sums#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
