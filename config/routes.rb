Rails.application.routes.draw do
  # get 'flames/index'

  get 'welcome/index'

  resources :flames
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
