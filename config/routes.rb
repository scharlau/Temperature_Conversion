Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'convert/index'
  # convert/celsius is in round one
 # get 'convert/celsius'
 # convert/temp is in round two
 get 'convert/temp'
  
  root 'convert#index'
end
