Rails.application.routes.draw do
  get 'api/index'
  root 'api#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
