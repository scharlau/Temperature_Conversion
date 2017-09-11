Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'convert/index'
  post 'convert/celsius'
  root 'convert#index'
end
