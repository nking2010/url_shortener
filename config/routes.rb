Rails.application.routes.draw do
  get '/' =>"url#new"
  get '/:id' =>"url#redirect" 
  resources :url
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
