Rails.application.routes.draw do
  get 'gossips/index'
  get 'gossips/show'
  get 'gossips/update'
  get 'gossips/destroy'
  get 'gossips/new'
get '/', to: 'static_pages#home'

resources :gossips



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
